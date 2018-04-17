cask 'midi-monitor' do
  version '1.3.2'
  sha256 '1b2f0a2e1892247c3a5c0c9fc48c682dfcbd4e15881a26eeaaf6026c7f61f24c'

  url "https://www.snoize.com/MIDIMonitor/MIDIMonitor_#{version.dots_to_underscores}.zip"
  appcast 'https://www.snoize.com/MIDIMonitor/MIDIMonitor.xml',
          checkpoint: 'de0c37ffdf1e4e8125532139efd591a57a69cb1f53401202848864aef5f2d19f'
  name 'MIDI Monitor'
  homepage 'https://www.snoize.com/MIDIMonitor/'

  depends_on macos: '>= :lion'

  app 'MIDI Monitor.app'

  uninstall quit: [
                    'com.snoize.MIDIMonitor',
                    'com.snoize.MIDIMonitorDriver',
                    'com.snoize.MIDISpyFramework',
                    'com.snoize.SnoizeMIDI',
                  ]

  zap trash: [
               '~/Library/Preferences/com.snoize.MIDIMonitor.plist',
               '~/Library/Caches/com.snoize.MIDIMonitor',
               '~/Library/Saved Application State/com.snoize.MIDIMonitor.savedState',
             ]
end
