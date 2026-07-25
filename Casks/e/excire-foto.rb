cask "excire-foto" do
  arch arm: "arm64", intel: "x64"

  version "4.1.6"
  sha256 arm:   "e08d88cd2458b6f4d35aabfbbb2baca0369b3513c81596361119981828d0f842",
         intel: "1d02591ca30e036cb1f40f3f1c8d243daecf9e4f5d4d8e4b0df4754cc8c90764"

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
