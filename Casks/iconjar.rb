cask "iconjar" do
  version "2.6.1,45082"
  sha256 "1d74e56b934f06b15e2d21746014f976f1e63e2465121acb1325b745dc392cc2"

  url "https://geticonjar.com/releases/IconJar.app.#{version.after_comma}.zip"
  appcast "https://geticonjar.com/releases/stable.xml"
  name "IconJar"
  homepage "https://geticonjar.com/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "IconJar.app"

  zap trash: [
    "/Users/Shared/IconJar",
    "~/Library/Application Support/IconJar",
    "~/Library/Preferences/com.iconjar.iconjar.plist",
  ]
end
