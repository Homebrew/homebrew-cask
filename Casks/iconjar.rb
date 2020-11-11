cask "iconjar" do
  version "2.6.3,45185"
  sha256 "398ed6b8335603a4a09cbb537cf230af571c61b280c63fcbfccf408a82ef5524"

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
