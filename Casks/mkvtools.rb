cask 'mkvtools' do
  version '3.6.0'
  sha256 '441c31b720a7c9f39ca094003c5daac8c4f65ac9d1b1a9ca71ad06dd3c01ea5e'

  url "http://www.emmgunn.com/downloads/mkvtools#{version}.zip"
  name 'MKVtools'
  homepage 'http://www.emmgunn.com/mkvtools/mkvtoolshome.html'

  app "mkvtools#{version}/MKVtools.app"
end
