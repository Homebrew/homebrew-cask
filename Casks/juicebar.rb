cask "juicebar" do
  version "1.0.63"
  sha256 "0947fe502aace9e0472c14bada8c4ad4a4698a56d2a2e3ee389534849100cd74"

  url "https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  name "JuiceBar"
  homepage "https://get-juicebar.com/"

  app "JuiceBar.app"
end
