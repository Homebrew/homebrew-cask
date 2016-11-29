cask 'janusvr' do
  version :latest
  sha256 :no_check

  url 'http://www.janusvr.com/downloads/janusvr.dmg'
  name 'Janus VR'
  homepage 'http://janusvr.com/'

  app 'janusvr.app'
end
