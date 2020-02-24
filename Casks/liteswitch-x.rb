cask 'liteswitch-x' do
  version '2.8.3'
  sha256 'c4fa6ab80296585cbf4cdfce2b2635f11c21a2f680d029d0a4645a26854d6671'

  url "https://sysbeep.com/legacy/LiteSwitch%20X%20#{version}.zip"
  appcast 'https://sysbeep.com/legacy/LiteSwitch_ReleaseNotes.html'
  name 'LiteSwitch X'
  homepage 'https://sysbeep.com/'

  prefpane "LiteSwitch X #{version}/LiteSwitch X.prefPane"

  zap trash: '~/Library/Preferences/com.proteron.liteswitch.plist'
end
