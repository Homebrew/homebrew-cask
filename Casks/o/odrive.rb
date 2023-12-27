cask "odrive" do
  version "7379"
  sha256 "a7be09e37f177b32815df4290619b89a87d85cd438768da859027b3607854f51"

  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.pkg",
      verified: "d3huse1s6vwzq6.cloudfront.net/"
  name "odrive"
  desc "Tool to make any cloud storage unified, synchronized, shareable, and encrypted"
  homepage "https://www.odrive.com/"

  livecheck do
    url "https://www.odrive.com/downloaddesktop?platform=mac"
    strategy :header_match
  end

  pkg "odrivesync.#{version}.pkg"

  # Should also remove ~/.odrive/bin/ on uninstall, but causes
  # faulty reinstall unless ~/.odrive is removed entirely.
  uninstall quit:    "com.oxygen.odriveapp",
            pkgutil: "com.oxygen.odrive.*"

  zap trash: "~/.odrive"
end
