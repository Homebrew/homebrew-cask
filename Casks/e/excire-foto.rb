cask "excire-foto" do
  arch arm: "arm64", intel: "x64"

  version "4.1.4"
  sha256 arm:   "a64e03a2fec2ef87c0893f0e5bae5ad01f12f7b4e76c2ef11899c71703e243c3",
         intel: "81b9883abf41c4b4f6f7874bd8281cf76de2de106758ed120b2193ba396a5169"

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

  zap trash: [
    "~/Library/Application Support/excire-foto",
    "~/Library/Preferences/prc.excire.foto.plist",
  ]
end
