cask :v1 => 'mkvtools' do
  version '3.4.4'
  sha256 '21fd96039cca22866fe9f75fc5275e2673e9fd2362cb8b54bd210fe8fd1f88d1'

  url "http://www.emmgunn.com/downloads/mkvtools#{version}.zip"
  homepage 'http://www.emmgunn.com/mkvtools/mkvtoolshome.html'
  license :commercial

  app "mkvtools#{version}/MKVtools.app"
end
