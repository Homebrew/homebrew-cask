cask "odrive" do
  version "6918"
  sha256 "9107f7634ac70cf017c889738b5bd8e3ac937bd991d5999119832d57407f0c22"

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
    "application.com.apple.installer.1152921500312163482",
    "application.com.apple.systemevents.1152921500312199658",
  ],
            pkgutil: "com.oxygen.odrive.*"
end
