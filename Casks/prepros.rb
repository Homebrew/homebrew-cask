cask 'prepros' do
  version '7.3.17'
  sha256 '1bf3ef540654fd9ce534437c03f40e7325910dba4b984ed0431349fe28b4087e'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
