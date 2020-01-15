cask 'power-manager' do
  version '5.4.5'
  sha256 '20bc03f8e4775c2cfcc32b8d31fd7eac7738ed2af7fc326e25d064dcd0adb36d'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Power Manager.app'
end
