cask 'prepros' do
  version '7.2.3'
  sha256 '05d214d911bcd917e90fdd1b0b556bae3e23acd2af94af4609155acb82718bd2'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
