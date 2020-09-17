cask "odrive" do
  version "6800"
  sha256 "5bbd4b2a5a0cabed411094fd30a6db6eaceed227ef5b8d7443cbccfbd603ae59"

  # downloads can be found at https://www.odrive.com/downloaddesktop
  # d3huse1s6vwzq6.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.odrive.com/downloaddesktop?platform=mac"
  name "odrive"
  desc "Tool to make any cloud storage unified, synchronized, shareable, and encrypted"
  homepage "https://www.odrive.com/"

  pkg "odrivesync.#{version}.pkg"

  uninstall quit:    "com.oxygencloud.odrive",
            pkgutil: "com.oxygen.odrive.*"
end
