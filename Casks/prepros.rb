cask 'prepros' do
  version '7.2.9'
  sha256 '77e0b1d72caacce11b01362f73a6d8f06bb588eba0f5329c6e428260712866ba'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
