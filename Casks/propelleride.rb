cask 'propelleride' do
  version '0.38.5'
  sha256 'ea7788c356dc53143156307278867a020ebbf806e87ac2540f37ebbb61b6c3e9'

  url "https://github.com/parallaxinc/PropellerIDE/releases/download/#{version}/propelleride-#{version}-amd64.dmg"
  appcast 'https://github.com/parallaxinc/PropellerIDE/releases.atom',
          checkpoint: '178c0597f0b516d44fdcf25df1dd426fdae950110c91022e3a15387487e19d50'
  name 'PropellerIDE'
  homepage 'https://github.com/parallaxinc/PropellerIDE'

  app 'PropellerIDE.app'
end
