cask "excire-foto" do
  arch arm: "arm64", intel: "x64"

  version "4.1.3"
  sha256 arm:   "2abdd6352fd0ebbf14a25ac3cff23ac5b43ed2614678a770ff833fb7d8305612",
         intel: "a530453b348a2790e12699d16f08b8636c806a9add709a3be3c3e6fac45c8624"

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
