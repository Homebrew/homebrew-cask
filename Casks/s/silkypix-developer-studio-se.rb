cask "silkypix-developer-studio-se" do
  version "8.0.31.1"
  sha256 "57611278f81951c4ecd26d8e283626cc5789e6660ce6a1473697160237cd3cff"

  url "https://www2.isl.co.jp/SILKYPIX/p/download/files/SILKYPIX_DS#{version.major}_SE.#{version}.dmg"
  name "SILKYPIX Developer Studio #{version.major} SE"
  desc "RAW image development software used with Panasonic products"
  homepage "https://www.isl.co.jp/SILKYPIX/english/p/"

  livecheck do
    url "https://www.isl.co.jp/SILKYPIX/japanese/p/assets-v#{version.major}/commons/data/data.json"
    strategy :json do |json|
      json.dig("commons", "download", "mac", "version")
    end
  end

  depends_on :macos

  pkg "SILKYPIX Developer Studio #{version.major} SE Installer.pkg"

  uninstall pkgutil: "jp.co.isl.SILKYPIX*SE"

  zap trash: "~/Library/Preferences/jp.co.isl.SILKYPIX*SE.plist"
end
