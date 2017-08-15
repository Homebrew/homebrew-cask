cask 'freeplane' do
  version '1.6.4'
  sha256 '4dd7e051af0edfae0752a1292e68ccf5cfcd1eeb7496f290876a340ae09d3497'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: 'a530989aa4d9ec55f5477e36144644f93c1fc54171a3657af8b6769a2db4035c'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
