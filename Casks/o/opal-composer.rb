cask "opal-composer" do
  version "2.0.0,24"
  sha256 "4eaa1225a203b057dbabaa7b17d7bbff91512cac32e942359b651dbef06928b3"

  url "https://updates.opal.camera/release/Opal_Composer_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "updates.opal.camera/release/"
  name "Opal Composer"
  desc "Professional webcam software for the Opal C1"
  homepage "https://opalcamera.com/opal-composer"

  # The Sparkle `shortVersion` may not include the full version used in the
  # filename (e.g. 2.0 instead of 2.0.0), so we match the version from the
  # filename instead.
  livecheck do
    url "https://updates.opal.camera/release/appcast.xml"
    regex(/v?(\d+(?:[._]\d+)+)/i)
    strategy :sparkle do |item, regex|
      item.url[regex, 1]&.tr("_", ",")
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Opal Composer.app"

  zap trash: [
    "~/Library/Application Scripts/97Z3HJWCRT.com.opalcamera.v2.Opal",
    "~/Library/Caches/com.opalcamera.Opal.v2",
    "~/Library/Group Containers/97Z3HJWCRT.com.opalcamera.v2.Opal",
    "~/Library/HTTPStorages/com.opalcamera.Opal.v2",
    "~/Library/Preferences/97Z3HJWCRT.com.opalcamera.v2.Opal.plist",
    "~/Library/Preferences/com.opalcamera.Opal.v2.plist",
  ]
end
