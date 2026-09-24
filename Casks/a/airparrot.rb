cask "airparrot" do
  version "3.1.8"
  sha256 "4f5ab570e7fd8c590b3f1e642bce09a38ae803d7d4249ff521f62dd4926a20e0"

  url "https://download.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot-#{version}.dmg"
  name "AirParrot"
  desc "Tool to wirelessly mirror the screen or stream media files"
  homepage "https://www.airsquirrels.com/airparrot/"

  livecheck do
    url "https://updates-prod.airsquirrels.com/AirParrot#{version.major}/Mac/updateCheck/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "AirParrot #{version.major}.app"

  uninstall quit: "com.squirrels.AirParrot-#{version.major}",
            kext: [
              "/Library/Extensions/AirParrotDriver.kext",
              "/Library/Extensions/APExtFramebuffer.kext",
              "/System/Library/Extensions/AirParrotDriver.kext",
              "/System/Library/Extensions/APExtFramebuffer.kext",
              "com.squirrels.driver.AirParrotSpeakers",
            ]

  zap trash: "~/Library/Preferences/com.squirrels.AirParrot-*.plist"
end
