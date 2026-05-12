cask "odrive" do
  version "7676"
  sha256 "044798235858abbb9b23ae34560e70276d00ac9cc001ca99bc80f5e8fbf88b01"

  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.pkg",
      verified: "d3huse1s6vwzq6.cloudfront.net/"
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
