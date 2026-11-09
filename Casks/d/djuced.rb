cask "djuced" do
  version "6.8.1"
  sha256 "a76200de7cc2fced9b765d83edd02c8a07aa302d77c87c81ddf2f4c91330e2a2"

  url "https://ts.hercules.com/download/djuced/#{version.major_minor}/DJUCED_#{version}.dmg"
  name "DJUCED"
  desc "DJ software for Hercules controllers"
  homepage "https://www.djuced.com/"

  livecheck do
    url "https://www.djuced.com/downloaddjuced/"
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :monterey

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
