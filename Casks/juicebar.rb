cask "juicebar" do
  version "1.0.68"
  sha256 "144b413b57396a850ef82886398023d5eb1d3e04154004dfb11086fe6017d343"

  url "https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  name "JuiceBar"
  desc "Marketplace for Resolume"
  homepage "https://get-juicebar.com/"

  app "JuiceBar.app"
end
