cask 'midi-control-center' do
  version '1.2.2.429'
  sha256 'fba9e3e4835ece3c4a030c98a03c10051a0d8e3f103405843ee113e7f620892e'

  url "https://downloads.arturia.com/extra/mcc/MIDI_Control_Center_#{version.dots_to_underscores}.pkg"
  name 'Arturia Midi Control Center'
  homepage 'http://www.arturia.com/support/downloads&manuals'
  license :commercial

  pkg "MIDI_Control_Center_#{version.dots_to_underscores}.pkg"
end
