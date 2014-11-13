cask :v1 => 'jin' do
  version '2.14.1'
  sha256 'd5592e35bc1e1bb6cf8337d0adaf883c7f5964e9e6f378f66f3fa29979d653aa'

  url "http://downloads.sourceforge.net/project/jin/jin/jin-#{version}/jin-#{version}-macosx-lion.dmg"
  homepage 'http://www.jinchess.com/'
  license :gpl

  app 'Jin.app'
end
