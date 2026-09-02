cask "opendnsupdater" do
  version "3.1"
  sha256 :no_check

  url "https://www.opendns.com/download/mac/"
  name "OpenDNS Updater"
  desc "Dynamic IP updater client"
  homepage "https://support.opendns.com/hc/en-us/articles/227987867"

  livecheck do
    url :url
    strategy :header_match
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "OpenDNSUpdater.app"

  caveats do
    requires_rosetta
  end
end
