cask "odrive" do
  version "7503"
  sha256 "25b8f8da47abd0805c3d5f93f4dad66d4ce75ef9a3e185bdb18ccb3f492f98e4"

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
