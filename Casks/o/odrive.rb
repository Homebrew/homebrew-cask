cask "odrive" do
  version "8017"
  sha256 "ee5b3c5bd70d7e6f17f0e154f6982fa1cd87be5ca891619f3dc8621dda71d1bb"

  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.pkg"
  name "odrive"
  desc "Tool to make any cloud storage unified, synchronised, shareable, and encrypted"
  homepage "https://www.odrive.com/"

  livecheck do
    url "https://www.odrive.com/downloaddesktop?platform=mac"
    strategy :header_match
  end

  depends_on :macos

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
