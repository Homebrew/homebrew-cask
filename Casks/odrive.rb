cask "odrive" do
  version "7087"
  sha256 "517b2f1487fefeb098c5f0415e9fe09dc977d33e0985da4596058daafe8d410b"

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

  uninstall quit:    [
    "com.oxygencloud.odrive",
  ],
            pkgutil: "com.oxygen.odrive.*"
end
