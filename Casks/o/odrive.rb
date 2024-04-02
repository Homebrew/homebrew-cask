cask "odrive" do
  version "7404"
  sha256 "368f1f67b0a1bfc305522ef90da9b0d302447174dc7451fd068b92b0fa5d44a7"

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
  uninstall quit:    "com.oxygen.odriveapp",
            pkgutil: "com.oxygen.odrive.*"

  zap trash: "~/.odrive"
end
