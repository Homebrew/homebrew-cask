cask "pixel-perfect" do
  version "1.2"
  sha256 "163b96ba5bea26507a9625237726a20b8a4586250a6e5883700f20cadb65e386"

  url "https://github.com/cormiertyshawn895/PixelPerfect/releases/download/#{version}/PixelPerfect.#{version}.zip"
  name "Pixel Perfect"
  desc "Increase text size and render at native resolution of iOS apps"
  homepage "https://github.com/cormiertyshawn895/PixelPerfect/"

  auto_updates true
  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Pixel Perfect/Pixel Perfect.app"

  zap trash: [
    "~/Library/Caches/com.mac.PixelPerfect",
    "~/Library/HTTPStorages/com.mac.PixelPerfect",
    "~/Library/Preferences/com.mac.PixelPerfect.plist",
  ]
end
