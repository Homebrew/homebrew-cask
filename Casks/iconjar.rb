cask "iconjar" do
  version "2.8.1,48705"
  sha256 "1806d0319ea63a669c01c07f4b733c4e27b232b424a159b4288e9f55a0a5e962"

  url "https://geticonjar.com/releases/IconJar.app.#{version.after_comma}.zip"
  name "IconJar"
  desc "Icon organizer"
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
