cask "iconjar" do
  version "2.6.2,45107"
  sha256 "a92fbaf1851e47f584f0541ec5e1b886d07d5ae8c886f1a87b805e32a1e467f1"

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
