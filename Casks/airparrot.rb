cask "airparrot" do
  version "3.1.1"
  sha256 "2c241ade62dfb061dc565a5e0f94998b80a538d60ad0c0ffa2b5af905c6591c1"

  url "https://download.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot-#{version}.dmg"
  appcast "https://www.airsquirrels.com/airparrot/release-notes/mac"
  name "AirParrot"
  desc "Tool to wirelessly mirror the screen or stream media files"
  homepage "https://www.airsquirrels.com/airparrot/"

  app "AirParrot #{version.major}.app"

  uninstall kext: [
    "com.squirrels.driver.AirParrotSpeakers",
    "/Library/Extensions/AirParrotDriver.kext",
    "/Library/Extensions/APExtFramebuffer.kext",
    "/System/Library/Extensions/AirParrotDriver.kext",
    "/System/Library/Extensions/APExtFramebuffer.kext",
  ],
            quit: "com.squirrels.AirParrot-#{version.major}"

  zap trash: "~/Library/Preferences/com.squirrels.AirParrot-*.plist"
end
