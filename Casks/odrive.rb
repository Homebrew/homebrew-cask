cask "odrive" do
  version "7145"
  sha256 "7f6ac1dd0e135a7d1531523a3b4363c4b4bee83c425477cc1dba3e49545103c2"

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
