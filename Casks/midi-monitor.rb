cask :v1 => 'midi-monitor' do
  version :latest
  sha256 :no_check

  url 'http://www.snoize.com/MIDIMonitor/MIDIMonitor.zip'
  appcast 'http://www.snoize.com/MIDIMonitor/MIDIMonitor.xml'
  name 'MIDI Monitor'
  homepage 'http://www.snoize.com/MIDIMonitor/'
  license :bsd

  app 'MIDI Monitor.app'

  uninstall :quit => [
                      'com.snoize.MIDIMonitor',
                      'com.snoize.MIDIMonitorDriver',
                      'com.snoize.MIDISpyFramework',
                      'com.snoize.SnoizeMIDI'
                     ]

  zap :delete => [
                  '~/Library/Preferences/com.snoize.MIDIMonitor.plist',
                  '~/Library/Caches/com.snoize.MIDIMonitor',
                  '~/Library/Saved Application State/com.snoize.MIDIMonitor.savedState'
                 ]

  depends_on :macos => '>= :lion'
end
