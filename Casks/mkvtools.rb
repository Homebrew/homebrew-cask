cask 'mkvtools' do
  version '3.4.5'
  sha256 '6d7af30ad6aecda120922a93f29ef6c4f5e703125fda229544a44739e82be1b2'

  url "http://www.emmgunn.com/downloads/mkvtools#{version}.zip"
  name 'MKVtools'
  homepage 'http://www.emmgunn.com/mkvtools/mkvtoolshome.html'
  license :commercial

  app "mkvtools#{version}/MKVtools.app"
end
