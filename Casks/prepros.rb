cask 'prepros' do
  version '7.2.24'
  sha256 'a017e461d1c336fc4a10cea7ce54d1645f7e1b27df3755f77102308b78c785a6'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
