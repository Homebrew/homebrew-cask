cask 'power-manager' do
  version '5.1.0'
  sha256 'd58c3fe9c5bcf9f380d1c3c8353ce2ecb6154c4b8860faa6a1416152e7a26659'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true

  app 'Power Manager.app'
end
