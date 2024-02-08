cask "odrive" do
  version "7383"
  sha256 "c75abd7d73450330c89d74fb13ef8d80e055b620e81c992f4ffe776b701327b9"

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
