cask 'power-manager' do
  version '5.4.4'
  sha256 'd086cc42d58a3000dea6407369905808e8ea77e5743cbcd04b4533150c09d932'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Power Manager.app'
end
