cask 'prepros' do
  version '7.2.14'
  sha256 'abbb743fca038dacfbf106affd466f318cff2f9d9861741011251017816a60f4'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
