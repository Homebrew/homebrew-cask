cask 'power-manager' do
  version '5.0.1'
  sha256 '94d554b8bd3e1f59232abe60644fa689a2ee42a4addf97b901de57651aba9a09'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/application'
  name 'Power Manager'
  homepage 'https://www.dssw.co.uk/powermanager/'

  auto_updates true

  app 'Power Manager.app'
end
