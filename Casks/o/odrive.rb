cask "odrive" do
  version "7694"
  sha256 "dafb4ae9cd4153a19a1bb17eb53d18521d3aa61ba40cb78e338ba2f0dc2fc84c"

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
