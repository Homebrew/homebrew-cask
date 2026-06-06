cask "silkypix-developer-studio-se" do
  version "8.0.30.4"
  sha256 "d3d7a4811fb16b244422fd6d2556a03ef678a4bd6f07afdaa797919aec4e559c"

  url "https://www2.isl.co.jp/SILKYPIX/p/download/files/SILKYPIX_DS8_SE.#{version}.dmg"
  name "SILKYPIX Developer Studio 8 SE"
  desc "RAW image development software used with Panasonic products"
  homepage "https://www.isl.co.jp/SILKYPIX/english/p/"

  livecheck do
    url "https://www.isl.co.jp/SILKYPIX/japanese/p/assets-v8/commons/data/data.json"
    strategy :json do |json|
      json.dig("commons", "download", "mac", "version")
    end
  end

  depends_on :macos

  pkg "SILKYPIX Developer Studio 8 SE Installer.pkg"

  uninstall pkgutil: "jp.co.isl.SILKYPIX8SE"

  zap trash: [
    "/private/var/db/receipts/jp.co.isl.SILKYPIX8SE.bom",
    "/private/var/db/receipts/jp.co.isl.SILKYPIX8SE.plist",
    "~/Library/Preferences/jp.co.isl.SILKYPIX8SE.plist",
  ]
end
