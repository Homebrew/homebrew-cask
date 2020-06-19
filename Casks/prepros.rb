cask 'prepros' do
  version '7.2.28'
  sha256 '205bea8fb80670e1e24fa11d0904769a4975e022753f4b62efc6e61ac3353341'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
