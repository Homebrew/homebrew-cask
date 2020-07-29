cask 'prepros' do
  version '7.3.2'
  sha256 'b0583feb2996c60cf2a46c837104727d6f5789270bf54bb5b61f595ef56ac5d7'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
