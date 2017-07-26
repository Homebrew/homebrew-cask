cask 'metabase-app' do
  version '0.25.0.1'
  sha256 '3638b269ea10e8947b12bacbdd0ce1a9eec1846d8b8262c18626caf4bd6dec34'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: 'ab55257f203ca49af7fa17b9264b70e7bb830a6c11e02dce31673bbc353fcda7'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
