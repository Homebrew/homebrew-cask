cask "iconjar" do
  version "2.7.0,45838"
  sha256 "84494993160fdc9843ce09a9262673a68b9bf1aa8ac198959a83dcfae2e20f9d"

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
