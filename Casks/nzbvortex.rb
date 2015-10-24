cask :v1 => 'nzbvortex' do
  version :latest
  sha256 :no_check

  url 'http://www.nzbvortex.com/downloads/NZBVortex.dmg'
  appcast 'http://www.nzbvortex.com/update/appcast.xml'
  name 'NZBVortex'
  homepage 'http://www.nzbvortex.com/'
  license :commercial

  app 'NZBVortex 3.app'
end
