cask "airparrot" do
  version "3.1.6"
  sha256 "b4f6d5668cb5ba41500e23745458f8abbd930043c797f64a47d5468a6e194e9d"

  url "https://download.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot-#{version}.dmg"
  name "AirParrot"
  desc "Tool to wirelessly mirror the screen or stream media files"
  homepage "https://www.airsquirrels.com/airparrot/"

  livecheck do
    url "https://www.airsquirrels.com/airparrot/download"
    regex(%r{href=.*?/AirParrot-(\d+(?:\.\d+)+)\.dmg}i)
  end

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
