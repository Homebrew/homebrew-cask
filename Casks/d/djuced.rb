cask "djuced" do
  version "6.3.3"
  sha256 "1cfe30e14601bb6980ca48ba93da9af4cc13c7f8a73c512d16ff1935a7bed0d6"

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
