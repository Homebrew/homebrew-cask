cask 'prepros' do
  version '7.2.7'
  sha256 '8006410c48afeafb6479712dd6bfe811bea67386b8848317649670530d539482'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
