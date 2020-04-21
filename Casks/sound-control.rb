cask 'sound-control' do
  version '2.4.3,5156'
  sha256 '2f86d4f9c30b122dbc5b79c182b0d9b19492839919c032268d2632e7a3d5a8e2'

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
