cask "iconjar" do
  version "2.7.1,46382"
  sha256 "ec5006c56e433bfe6d10b5e0e7587e696322e92288a965e7f34a1d3b1beb84dd"

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
