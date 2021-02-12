cask "iconjar" do
  version "2.7.2,46872"
  sha256 "fd0bcf57874ed6d3cefab2c53a496d37e9d3bf6dee30e105009d1f3c26b8c704"

  url "https://geticonjar.com/releases/IconJar.app.#{version.after_comma}.zip"
  name "IconJar"
  homepage "https://geticonjar.com/"

  livecheck do
    url "https://geticonjar.com/releases/stable.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "IconJar.app"

  zap trash: [
    "/Users/Shared/IconJar",
    "~/Library/Application Support/IconJar",
    "~/Library/Preferences/com.iconjar.iconjar.plist",
  ]
end
