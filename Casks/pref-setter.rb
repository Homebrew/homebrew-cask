cask 'pref-setter' do
  version '2.0'
  sha256 '13e46309009eaccc0c75e4d13536cb810634ba57ad185db839b6724b35d900ce'

  url 'http://www.nightproductions.net/downloads/prefsetter.zip'
  appcast 'http://www.nightproductions.net/feeds/prefsetter.xml',
          checkpoint: '6af6c83d087881cb90d65da87d843f6c062b636e093bf0ee43f309d07415a2db'
  name 'Pref Setter'
  homepage 'http://www.nightproductions.net/prefsetter.html'

  app 'Pref Setter/Pref Setter.app'
end
