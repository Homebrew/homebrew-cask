cask "istat-server" do
  version "3.03"
  sha256 "0d6df9abe88aa7b29f53abb63413ede2853823cf6fd75b75818ef0190a07e8c7"

  # bjango.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://bjango.s3.amazonaws.com/files/istatserver#{version.major}/istatserver#{version}.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.bjango.com/istatserver"
  name "iStat Server"
  desc "Transmits computer or server’s vital statistics"
  homepage "https://bjango.com/istatserver/"

  app "iStat Server.app"
end
