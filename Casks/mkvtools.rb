cask 'mkvtools' do
  version '3.7.0'
  sha256 '33446c3e62c2b9a02a242e4e61d51e4a102a04a5f978aedd85f077a69d9d8fe0'

  url "http://www.emmgunn.com/downloads/mkvtools#{version}.zip"
  name 'MKVtools'
  homepage 'http://www.emmgunn.com/mkvtools-home/'

  app "mkvtools#{version}/MKVtools.app"
end
