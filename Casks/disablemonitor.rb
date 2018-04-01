cask 'disablemonitor' do
  version '1.92'
  sha256 '5bdb362d779f7fbb6cf916d7d14545a79206b8158ce5309f2e5bbcb7203651fb'

  url "https://github.com/Eun/DisableMonitor/releases/download/G#{version}/DisableMonitor-G#{version}.zip"
  appcast 'https://github.com/Eun/DisableMonitor/releases.atom',
          checkpoint: '6d70f2b67ee19da19e6d5e87ee3a394a33de2da3afff0a963d64c54f80f4da6b'
  name 'DisableMonitor'
  homepage 'https://github.com/Eun/DisableMonitor'

  app 'DisableMonitor.app'
end
