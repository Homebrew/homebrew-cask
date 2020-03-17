cask 'power-manager' do
  version '5.4.7'
  sha256 'c655ea9d87672a29c3e94b2596febd218106994738086011dd5aa71d7584ae50'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Power Manager.app'
end
