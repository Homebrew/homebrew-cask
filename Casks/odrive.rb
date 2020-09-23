cask "odrive" do
  version "6813"
  sha256 "781b94ef2cf492e422cdf30dfc31fceb6597cb3165042e4f24a73dc3220e0afb"

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
