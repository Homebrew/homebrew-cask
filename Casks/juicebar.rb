cask 'juicebar' do
  version '1.0.57'
  sha256 'acbaa1eb19e1658de4d0024b355eb47d889eab87fcd8a28ea727578a94e71568'

  url "https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  name 'JuiceBar'
  homepage 'https://get-juicebar.com/'

  app 'JuiceBar.app'
end
