cask 'power-manager' do
  version '5.4.6'
  sha256 'c6a05a925dbb090c042f4f520d01460df18c06570e6cd06940f62f66ed07512c'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Power Manager.app'
end
