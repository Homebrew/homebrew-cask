cask "opendnsupdater" do
  version "3.1"
  sha256 "3e5def08fd366a0d4d651a8bd7cf0a1274f8dd67f8c7a55842b3c4126492a15b"

  url "https://www.opendns.com/download/mac/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.opendns.com/download/mac/"
  name "OpenDNS Updater"
  desc "Dynamic IP updater client"
  homepage "https://support.opendns.com/hc/en-us/articles/227987867"

  app "OpenDNSUpdater.app"
end
