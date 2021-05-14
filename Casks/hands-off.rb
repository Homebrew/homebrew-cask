cask "hands-off" do
  version "4.4.3"
  sha256 "55476120d00e770ed3b9f7d9da44ee4d6738ad0289a7511e4e7fa10aa14009c5"

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  name "Hands Off!"
  desc "Tool to monitor and control application access to network and disks"
  homepage "https://www.oneperiodic.com/products/handsoff/"

  livecheck do
    url "https://www.oneperiodic.com/handsoff#{version.major}.xml"
    strategy :sparkle
  end

  app "Hands Off!.app"

  zap trash: "~/Library/Preferences/com.metakine.handsoff.plist"
end
