cask 'midi-monitor' do
  version :latest
  sha256 :no_check

  url 'https://www.snoize.com/MIDIMonitor/MIDIMonitor.zip'
  appcast 'https://www.snoize.com/MIDIMonitor/MIDIMonitor.xml',
          :sha256 => '17373cdb264f04bddc35e44fec61685246aa5dd3fb774c74ecd8a003ec804a7f'
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
