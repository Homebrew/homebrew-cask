cask 'prepros' do
  version '7.3.13'
  sha256 '92eeccbefd5fc0cc59c7fe9cf722b84bcb797b2df324202c836a9ecbf9bb6e7b'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
