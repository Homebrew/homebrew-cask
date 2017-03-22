cask 'power-manager' do
  version '4.6.0'
  sha256 '06adcb7309c904fb235cdf5161b13b79c2022685e31108e2d720b1bfde5576cd'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/application',
          checkpoint: '3bc8e1a5750a72f66a8a316ae7715dcb3b4a9fd03b2c989da1b84036df89cdc6'
  name 'Power Manager'
  homepage 'https://www.dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager.app'
end
