cask 'everweb' do
  version :latest
  sha256 :no_check

  # ragesw.com was verified as official when first introduced to the cask
  url 'https://www.ragesw.com/downloads/everweb/everweb.zip'
  name 'EverWeb'
  homepage 'http://www.everwebapp.com/'

  app 'EverWeb.app'
end
