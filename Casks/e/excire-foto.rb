cask "excire-foto" do
  arch arm: "arm64", intel: "x64"

  version "4.1.5"
  sha256 arm:   "2540f80cb8f644a30509f6243cf55b217f3a2d6579089553c396a5fc72d7022a",
         intel: "151ea2c011c96426b8c34859c0c282844e542093e80519d878713c28efeaa649"

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

  depends_on macos: :big_sur

  pkg "Install.pkg"

  uninstall pkgutil: "prc.excire.foto"

  zap trash: [
    "~/Library/Application Support/excire-foto",
    "~/Library/Preferences/prc.excire.foto.plist",
  ]
end
