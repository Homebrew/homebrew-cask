cask "iconjar" do
  version "2.7.1,46384"
  sha256 "fe4b2617612e8897d980abdb88890db6166218836f1ebeb83da17e50ade2096a"

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
