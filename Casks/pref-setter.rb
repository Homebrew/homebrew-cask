cask 'pref-setter' do
  version :latest
  sha256 :no_check

  url 'http://www.nightproductions.net/downloads/prefsetter.zip'
  appcast 'http://www.nightproductions.net/feeds/prefsetter.xml',
          :checkpoint => '3cf40e0893b96cec1314c601d7bb93782c28202585903f5fd0e6e6eb1fb821c8'
  name 'Pref Setter'
  homepage 'http://www.nightproductions.net/prefsetter.html'
  license :gratis

  app 'Pref Setter/Pref Setter.app'
end
