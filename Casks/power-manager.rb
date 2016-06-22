cask 'power-manager' do
  version '4.5.3'
  sha256 '358cb494e85ad080fc35d4ca20fc9951f84ad172fb16fd595023d7b6dbc994c1'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/application',
          checkpoint: '1864836e62aca37c9a217d049642ee46713b9654932c941cd8107cd10d179f5f'
  name 'Power Manager'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :commercial

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager.app'
end
