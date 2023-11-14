cask "opal-composer" do
  version "1.2,6"
  sha256 "dba7da3b31dd7ecc52667ad7423835672c367721cdc033deb75ca86285aa4f24"

  url "https://updates.opal.camera/release/Opal_Composer_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "updates.opal.camera/release/"
  name "Opal Composer"
  desc "Professional webcam software for the Opal C1"
  homepage "https://opalcamera.com/opal-composer"

  livecheck do
    url "https://public-opal-bucket.s3.us-east-2.amazonaws.com/release/appcast.xml"
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
