cask "excire-foto" do
  arch arm: "arm64", intel: "x64"

  version "4.0.3"
  sha256 arm:   "a73cae2d2044fad89622b4b573e516d827bffb456c68b20fb2b65ef2b084d293",
         intel: "850f6cb96c66536bd33a7df10ae47cb4699d756aad01566456f3b956f58f6d71"

  url "https://www.excire.com/downloads/excire-foto/ExcireFoto-#{version}-#{arch}.dmg.zip"
  name "Excire Foto"
  desc "Photo library manager with object recognition, search, and culling tools"
  homepage "https://excire.com/en/excire-foto/"

  livecheck do
    url "https://api.excire.com/v2/app_version?product=ExcireFoto2025&platform=darwin&arch=#{arch}&lang=0&current_version=#{version}&current_version_hash=00000000"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"

  pkg "Install.pkg"

  uninstall pkgutil: "prc.excire.foto"

  zap trash: "~/Library/Application Support/excire-foto"
end
