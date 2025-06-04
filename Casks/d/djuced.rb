cask "djuced" do
  version "6.2.5"
  sha256 "2d764eb605e1cd6ee176327ac2b847a6df7c9a6c5bb86a4b317f51edf90bdd11"

  url "https://ts.hercules.com/download/djuced/#{version.major_minor}/DJUCED_#{version}.dmg",
      verified: "hercules.com/download/djuced/"
  name "DJUCED"
  desc "DJ software for Hercules controllers"
  homepage "https://www.djuced.com/"

  livecheck do
    url "https://www.djuced.com/downloaddjuced/"
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :monterey"

  pkg "djuced_#{version}.pkg"

  uninstall pkgutil: "com.guillemot.DJUCED"

  zap trash: [
    "~/Documents/DJUCED",
    "~/Library/Caches/com.Guillemot.DJUCED",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.Guillemot.DJUCED",
    "~/Library/Preferences/com.Guillemot.DJUCED.plist",
    "~/Library/Saved Application State/com.Guillemot.DJUCED.savedState",
  ]
end
