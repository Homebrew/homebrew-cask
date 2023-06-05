cask "airparrot" do
  version "3.1.5"
  sha256 "4d38f9ae2d5f1fef454217f792906742756b7e80676466a674f334aad7c09ff3"

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
