cask 'smartcutter' do
  version :latest
  sha256 :no_check

  url 'http://www.fame-ring.com/SmartCutter.dmg'
  name 'Smart Cutter'
  name 'Smart Cutter for DV and DVB'
  homepage 'http://www.fame-ring.com/smart_cutter.html'
  license :commercial

  app 'SmartCutter.app'

  # This might remove preferences for all FameRing products on the system
  # but right now SmartCutter is the only OS X application by the company.
  zap :delete => 
  [
    '~/Library/Application Support/FameRing/',
    '~/Library/Preferences/fltk.org/',
  ]

  caveats 'The unregistered version can be used indefinitely and applies a watermark at beginning of exported files.'
end
