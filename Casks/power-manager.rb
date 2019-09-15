cask 'power-manager' do
  version '5.1.1'
  sha256 '3c049a683bcc7d1c1195a3da37a24ce1b21786cc895682c7d1c5613ed1fbd035'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true

  app 'Power Manager.app'
end
