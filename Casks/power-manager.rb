cask 'power-manager' do
  version '4.6.5'
  sha256 'ae5ef061ea9d2ebe53e9dddb991e650f9fbee73a9a7eadc5272009924b63bfe8'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/application',
          checkpoint: '013cf9c2f8400b9cd83cafa24e148ac78505ad8652c112e13e09f272b1a98543'
  name 'Power Manager'
  homepage 'https://www.dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager.app'
end
