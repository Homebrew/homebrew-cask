cask 'freeplane' do
  version '1.5.18'
  sha256 '8227c396ab9d580126d0d08da84ba6b859eb54116b7902b20b7d7dfd812bbbb0'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: '18ffd999954ce5c856a46e3474487804445a3da40a0f4f209f54dfbffee34456'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
