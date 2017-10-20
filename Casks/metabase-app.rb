cask 'metabase-app' do
  version '0.26.2.0'
  sha256 '94498d23002f699b5c5ae540fa9f7fe0e3cf793018d1d81680bced77a486a748'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '873ccb567b1bba92a9de55ce05eb442bc5db1ae8c03db344162851af4b27d9f8'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
