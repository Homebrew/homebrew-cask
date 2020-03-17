cask 'juicebar' do
  version '1.0.55'
  sha256 'c790ceb57eb007647278701bb7dfc1ad90e312c0ebc833089b0139da21ce7129'

  url 'https://mango.get-juicebar.com/v1/bundles/macOS/latest'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://mango.get-juicebar.com/v1/bundles/macOS/latest'
  name 'JuiceBar'
  homepage 'https://get-juicebar.com/'

  app 'JuiceBar.app'
end
