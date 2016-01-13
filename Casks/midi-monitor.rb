cask 'midi-monitor' do
  version :latest
  sha256 :no_check

  url 'https://www.snoize.com/MIDIMonitor/MIDIMonitor.zip'
  appcast 'https://www.snoize.com/MIDIMonitor/MIDIMonitor.xml',
          :checkpoint => '647ee477f5c25ff5d161594c2f6d22eb9142f82ab793dba83a05fe12f64c3620'
  name 'MIDI Monitor'
  homepage 'https://www.snoize.com/MIDIMonitor/'
  license :bsd

  depends_on :macos => '>= :lion'

  app 'MIDI Monitor.app'

  uninstall :quit => [
                       'com.snoize.MIDIMonitor',
                       'com.snoize.MIDIMonitorDriver',
                       'com.snoize.MIDISpyFramework',
                       'com.snoize.SnoizeMIDI',
                     ]

  zap :delete => [
                   '~/Library/Preferences/com.snoize.MIDIMonitor.plist',
                   '~/Library/Caches/com.snoize.MIDIMonitor',
                   '~/Library/Saved Application State/com.snoize.MIDIMonitor.savedState',
                 ]
end
