cask "juicebar" do
  version "1.0.70"
  sha256 "6ef21e070b08a685409d95885ed967211edf1fc4730753db2e18b955d2bab446"

  url "https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  name "JuiceBar"
  desc "Marketplace for Resolume"
  homepage "https://get-juicebar.com/"

  app "JuiceBar.app"
end
