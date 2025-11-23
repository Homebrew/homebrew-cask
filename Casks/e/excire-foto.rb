cask "excire-foto" do
  arch arm: "arm64", intel: "x64"

  version "4.1.1"
  sha256 arm:   "1af1cd7741667b8825fe24cd5c88cb32ab3230930ba6a8b345762ff8c913ffe3",
         intel: "e136414da0f58014394d8b06fffc1f2508b2d44a04c0a94e53b3573fd8eb7ff4"

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
