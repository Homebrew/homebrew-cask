cask "airparrot" do
  version "3.1.0"
  sha256 "15455aea75e9b3c166be297a1391cc9d71c71f29b0133b8b91fdd655f320c238"

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
