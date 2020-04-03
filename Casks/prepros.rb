cask 'prepros' do
  version '7.2.15'
  sha256 'ffb21efe0f9bc2a0e6741fbdd70239201f3675245d35ff3b854a257c28f9db15'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
