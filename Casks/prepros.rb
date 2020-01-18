cask 'prepros' do
  version '7.2.8'
  sha256 '44134d78b34a06f5f53fd3e0114ffd11d82e6e419c285e6e9075289ebae5b765'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
