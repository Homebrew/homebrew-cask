cask 'power-manager' do
  version '5.4.8'
  sha256 '064f7172480c7b616331e7cdf374cc677be21336fd4d8c5dc7c16c5e4149fa3d'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Power Manager.app'
end
