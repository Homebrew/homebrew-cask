cask 'subsurface' do
  version '4.8.2'
  sha256 '0a207890e23268df1fe381a99298e57cdbe87132714c78287390271bf023d641'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
