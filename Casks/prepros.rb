cask 'prepros' do
  version '7.3.0'
  sha256 '2636a1bfd84202d7875389e056e57cd7ee255be43c104df11a538d4fced45c51'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
