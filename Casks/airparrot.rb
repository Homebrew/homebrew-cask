cask "airparrot" do
  version "3.1.3"
  sha256 "0beff5a8fd3e6a6b52235237a03a0f286e6298374037186f1649828463e00d4a"

  url "https://download.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot-#{version}.dmg"
  name "AirParrot"
  desc "Tool to wirelessly mirror the screen or stream media files"
  homepage "https://www.airsquirrels.com/airparrot/"

  livecheck do
    url "https://www.airsquirrels.com/airparrot/download"
    regex(%r{href=.*?/AirParrot-(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "AirParrot #{version.major}.app"

  uninstall kext: [
    "/Library/Extensions/AirParrotDriver.kext",
    "/Library/Extensions/APExtFramebuffer.kext",
    "/System/Library/Extensions/AirParrotDriver.kext",
    "/System/Library/Extensions/APExtFramebuffer.kext",
    "com.squirrels.driver.AirParrotSpeakers",
  ],
            quit: "com.squirrels.AirParrot-#{version.major}"

  zap trash: "~/Library/Preferences/com.squirrels.AirParrot-*.plist"
end
