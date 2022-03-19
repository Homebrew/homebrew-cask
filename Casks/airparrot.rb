cask "airparrot" do
  version "3.1.2"
  sha256 "fac0deb4339ed1979b91cc24fe15e5b291800e0ef64e0dbe84d55dd1dc9492bc"

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
