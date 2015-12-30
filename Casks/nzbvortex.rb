cask 'nzbvortex' do
  version :latest
  sha256 :no_check

  url 'http://www.nzbvortex.com/downloads/NZBVortex.dmg'
  appcast 'http://www.nzbvortex.com/update/appcast.xml',
          :sha256 => 'f91b5f3874597a1c67b10c714b2e726e8f649e8fa6da95af66ef4b5dbd668d13'
  name 'NZBVortex'
  homepage 'http://www.nzbvortex.com/'
  license :commercial

  app 'NZBVortex 3.app'
end
