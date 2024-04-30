cask "opal-composer" do
  version "1.4.1,15"
  sha256 "e3bb5d4463088b291ad407262cd6cb768db39f77a33cc1ba5e82885a68027209"

  url "https://updates.opal.camera/release/Opal_Composer_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "updates.opal.camera/release/"
  name "Opal Composer"
  desc "Professional webcam software for the Opal C1"
  homepage "https://opalcamera.com/opal-composer"

  livecheck do
    url "https://updates.opal.camera/release/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :monterey"

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
