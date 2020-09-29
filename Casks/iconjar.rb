cask "iconjar" do
  version "2.6.0,45038"
  sha256 "6b69aa5a1bcda473ef92db9621b6c10252944e1815770418f41522eb14b74665"

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
