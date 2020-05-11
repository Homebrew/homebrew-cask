cask 'prepros' do
  version '7.2.23'
  sha256 'fd66b24cd89fc38b298c92ad52a233a5a39bb41a62495586ffdef3a4b91a24ea'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
