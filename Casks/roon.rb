cask 'roon' do
  version :latest
  sha256 :no_check

  url 'http://download.roonlabs.com/builds/Roon.dmg'
  name 'Roon'
  homepage 'https://roonlabs.com/'

  app 'Roon.app'
end
