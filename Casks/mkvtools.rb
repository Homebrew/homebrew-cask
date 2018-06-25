cask 'mkvtools' do
  version '3.7.1'
  sha256 '0726c2816f1012565fe75eba410d553c97e64f607d85fcaa54b5d623965c9ab4'

  url "http://www.emmgunn.com/downloads/mkvtools#{version}.zip"
  name 'MKVtools'
  homepage 'http://www.emmgunn.com/mkvtools-home/'

  app "mkvtools#{version}/MKVtools.app"
end
