cask 'smartcutter' do
  version :latest
  sha256 :no_check

  url 'http://www.fame-ring.com/SmartCutter.dmg'
  name 'FameRing Smart Cutter for DV and DVB'
  homepage 'http://www.fame-ring.com/smart_cutter.html'
  license :freemium

  app 'SmartCutter.app'

  zap delete: [
                '~/Library/Application Support/FameRing/SmartCutter',
                '~/Library/Preferences/fltk.org/fltk.prefs',
              ],
      rmdir:  [
                '~/Library/Application Support/FameRing',
                '~/Library/Preferences/fltk.org',
              ]
end
