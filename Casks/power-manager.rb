cask 'power-manager' do
  version '4.6.4'
  sha256 '5be190a182956680237d9cc837977af65c580dbf610a5ad18ecb2c28399082d4'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/application',
          checkpoint: 'e71d1c2e28fa61542a7d41c0db7cce350172eae28fdf409291b9c46f3cbc9dca'
  name 'Power Manager'
  homepage 'https://www.dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager.app'
end
