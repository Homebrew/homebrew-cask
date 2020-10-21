cask "odrive" do
  version "6841"
  sha256 "049989ea33a5cd0efa3ea4382e9fa7b929f7c1dec9b29aa5d01cc5b8f1ed9561"

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
