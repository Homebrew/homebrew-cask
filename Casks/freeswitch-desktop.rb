cask 'freeswitch-desktop' do
  version '1.3.1'
  sha256 'f2bcbc8043843c3008abbfe0a5c156ede46ef0970cb81202d8568cae094c1347'

  url "https://github.com/pablote/fs-mgmt/releases/download/v#{version}/freeswitch-desktop-osx64.zip"
  appcast 'https://github.com/pablote/fs-mgmt/releases.atom',
          checkpoint: '5f098f91a4517822fc961136a3730ba0b70f689d4c03ebf15618985b5d4c0312'
  name 'Freeswitch Desktop'
  homepage 'https://github.com/pablote/fs-mgmt'

  app 'Freeswitch Desktop.app'
end
