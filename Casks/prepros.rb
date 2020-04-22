cask 'prepros' do
  version '7.2.18'
  sha256 '9a08f9989445e8e0cfde9a222fe96b7ac92d3a3b35fe58ee5d5ea2a18c27d4f2'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
