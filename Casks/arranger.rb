cask :v1 => 'arranger' do
  version '1.5'
  sha256 'c6e667258fc22c87331c6f1d65e6fc6d7d0a770c1f34bb6828d79b091c74e983'

  url "http://bucketomac.de/downloads/Arranger#{version}.zip"
  name 'Arranger'
  appcast 'http://bucketomac.de/appcast/arrangercast.xml',
          :sha256 => '07eedcf0ac71ee0102ff9061dce7146552c6667f7e6770bdaf0c2f502fe49319'
  homepage 'http://bucketomac.de/arranger/arranger/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Arranger.app'

  accessibility_access true
end
