cask 'prepros' do
  version '7.2.27'
  sha256 '17507e37908490267bc493554f51b9b1bfa87f1b08830c43ca012c22342e6821'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
