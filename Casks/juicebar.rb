cask 'juicebar' do
  version '1.0.62'
  sha256 '3bac0d3df6cd68bf29813b4e2abf7cc730a106998ddd45071d386d773c1b56ed'

  url "https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  name 'JuiceBar'
  homepage 'https://get-juicebar.com/'

  app 'JuiceBar.app'
end
