cask 'power-manager' do
  version '5.4.1'
  sha256 'a11e0b3d060cf32c3d7cb7b011327ce59b23d99d2a7aff278851aace3add9b4e'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Power Manager.app'
end
