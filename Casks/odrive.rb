cask "odrive" do
  version "7073"
  sha256 "f89baa14227ec4a1e374b2cc7e6fe42d4fe7759826bf0213d074c645bdfa8225"

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
