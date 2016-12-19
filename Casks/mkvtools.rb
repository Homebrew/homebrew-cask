cask 'mkvtools' do
  version '3.6.4'
  sha256 'd017e83b0dd10b64d753c5b1f661d7642ac543b24ae964da01fe31b1713b3e9b'

  url "http://www.emmgunn.com/downloads/mkvtools#{version}.zip"
  name 'MKVtools'
  homepage 'http://www.emmgunn.com/mkvtools-home/'

  app "mkvtools#{version}/MKVtools.app"
end
