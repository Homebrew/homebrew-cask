cask 'prepros' do
  version '7.2.21'
  sha256 'e0a13adef2ebb62663edb5950dc55b86852d18f2b7d07d8625221dbc7b1a2f4b'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
