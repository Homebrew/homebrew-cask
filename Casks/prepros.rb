cask 'prepros' do
  version '7.2.20'
  sha256 '7b243c2168375bf87660a3c4fefdfaee23b9fca507269909dc4b6340b18c8398'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
