cask "djuced" do
  version "6.6.3"
  sha256 "9172877baf13efbd9a7cbd242985abf639c060f652126920417d48b255fff717"

  url "https://ts.hercules.com/download/djuced/#{version.major_minor}/DJUCED_#{version}.dmg",
      verified: "hercules.com/download/djuced/"
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
