cask "excire-foto" do
  arch arm: "arm64", intel: "x64"

  version "4.1.2"
  sha256 arm:   "f3a00822fac68b1818e2fd66dd826fb761da26df469cd3923cb6e830a8287efe",
         intel: "306f6af7b6e755724d3ba3bbdf85cb79b4b70b54b3d29ab91b261ea59b4ce7a2"

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
