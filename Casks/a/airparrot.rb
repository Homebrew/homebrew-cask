cask "airparrot" do
  version "3.1.9"
  sha256 "82c840d7535649acc696767f89e13b21589bab063934c6f7a3a4703f15c624c1"

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
