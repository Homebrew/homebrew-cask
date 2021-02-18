cask "iconjar" do
  version "2.7.3,46884"
  sha256 "ec1cc4e8755316f163881396994e5be1869949b8d794ca041010fec40dabf902"

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
