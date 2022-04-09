cask "airparrot" do
  version "3.1.4"
  sha256 "68776d52852e3c7c5702f83e14c3e1e812855e67c483b09ab3ea8a4d06c75141"

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
