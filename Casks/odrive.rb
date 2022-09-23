cask "odrive" do
  version "7312"
  sha256 "0d8d959d9b1f95dd198d85fcc3cace8833b40c400df4af803cc6a2d1593c8a1f"

  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.pkg",
      verified: "d3huse1s6vwzq6.cloudfront.net/"
  name "odrive"
  desc "Tool to make any cloud storage unified, synchronized, shareable, and encrypted"
  homepage "https://www.odrive.com/"

  livecheck do
    # https://docs.odrive.com/docs/odrive-usage-guide#install-desktop-sync
    url "https://www.odrive.com/downloaddesktop?platform=mac"
    strategy :header_match
  end

  pkg "odrivesync.#{version}.pkg"

  uninstall quit:    "com.oxygencloud.odrive",
            pkgutil: "com.oxygen.odrive.*"
end
