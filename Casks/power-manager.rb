cask 'power-manager' do
  version '5.4.3'
  sha256 'abf7c56fa02fb044dc86960526a145ba7f2ebb0f3a13c8d0d4d1dc5bb0eb5cd3'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Power Manager.app'
end
