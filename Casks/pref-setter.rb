cask 'pref-setter' do
  version :latest
  sha256 :no_check

  url 'http://www.nightproductions.net/downloads/prefsetter.zip'
  appcast 'http://www.nightproductions.net/feeds/prefsetter.xml',
          :sha256 => '63ebf25caf5c85a56a6c18092737a8bcf2b9bd89c43a2099684d3269555774f4'
  name 'Pref Setter'
  homepage 'http://www.nightproductions.net/prefsetter.html'
  license :gratis

  app 'Pref Setter/Pref Setter.app'
end
