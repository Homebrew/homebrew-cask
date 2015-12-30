cask 'disablemonitor' do
  version '1.92'
  sha256 '5bdb362d779f7fbb6cf916d7d14545a79206b8158ce5309f2e5bbcb7203651fb'

  url "https://github.com/Eun/DisableMonitor/releases/download/G#{version}/DisableMonitor-G#{version}.zip"
  appcast 'https://github.com/Eun/DisableMonitor/releases.atom',
          :sha256 => 'fe771d9958403ea039c1ffa4e8edbc69dee465e1cff42456c18780d1dcbd91af'
  name 'DisableMonitor'
  homepage 'https://github.com/Eun/DisableMonitor'
  license :gpl

  app 'DisableMonitor.app'
end
