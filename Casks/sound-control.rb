cask 'sound-control' do
  version '2.4.2,5156'
  sha256 '16597cf39c91b1bdd012684e09d68050ac117ba812336651ce9d704e303816e6'

  # staticz.net/ was verified as official when first introduced to the cask
  url "https://staticz.com/download/#{version.after_comma}/"
  appcast 'http://staticz.net/updates/soundcontrol.rss'
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  auto_updates true

  app 'Sound Control.app'

  uninstall launchctl: [
                         'com.staticz.soundsiphon.bridgedaemon',
                         'com.staticz.audio.soundsiphon.playeragent',
                         'com.static.soundsiphon.inputagent',
                       ],
            quit:      'com.staticz.SoundControl'
end
