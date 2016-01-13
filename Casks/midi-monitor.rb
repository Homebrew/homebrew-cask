cask 'midi-monitor' do
  version :latest
  sha256 :no_check

  url 'https://www.snoize.com/MIDIMonitor/MIDIMonitor.zip'
  appcast 'https://www.snoize.com/MIDIMonitor/MIDIMonitor.xml',
          :checkpoint => 'eb0ebc4edfa5274c5a051c7753c3bcf924cc75392ec9a69d33176184732a29a5'
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
