cask 'pref-setter' do
  version :latest
  sha256 :no_check

  url 'http://www.nightproductions.net/downloads/prefsetter.zip'
  name 'Pref Setter'
  appcast 'http://www.nightproductions.net/feeds/prefsetter.xml',
          :sha256 => 'f1b7198f1e689695eb730cf7d68fb39e802f146213c2e41ab5b1c381ffdfc357'
  homepage 'http://www.nightproductions.net/prefsetter.html'
  license :gratis

  app 'Pref Setter/Pref Setter.app'
end
