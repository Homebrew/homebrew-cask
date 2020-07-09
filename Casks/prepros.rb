cask 'prepros' do
  version '7.3.12'
  sha256 '903a626e75492243c5b0c8deaa9f098b1b138010c5d8ca04470c6b8d47c3e7c7'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
