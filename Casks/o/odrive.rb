cask "odrive" do
  version "7450"
  sha256 "398c709b08e35eaaa09ace82232a90d379a358086fd687335f6a46a06df2a621"

  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.pkg",
      verified: "d3huse1s6vwzq6.cloudfront.net/"
  name "odrive"
  desc "Tool to make any cloud storage unified, synchronised, shareable, and encrypted"
  homepage "https://www.odrive.com/"

  livecheck do
    url "https://www.odrive.com/downloaddesktop?platform=mac"
    strategy :header_match
  end

  pkg "odrivesync.#{version}.pkg"

  # Should also remove ~/.odrive/bin/ on uninstall, but causes
  # faulty reinstall unless ~/.odrive is removed entirely.
  uninstall quit:    [
              "com.oxygen.odriveapp",
              "com.oxygencloud.odrive",
            ],
            pkgutil: "com.oxygen.odrive.*"

  zap trash: "~/.odrive"
end
