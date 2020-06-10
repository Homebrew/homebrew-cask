cask 'butt' do
  version '0.1.21'
  sha256 '1f897e94a8763058626f3ac2bdc20ba206e1ec6ce23a04aa2f8d129328e7ef5d'

  # sourceforge.net/butt/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/butt/rss'
  name 'Broadcast Using This Tool'
  homepage 'https://danielnoethen.de/'

  app 'butt.app'
end
