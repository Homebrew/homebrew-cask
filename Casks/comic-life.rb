cask 'comic-life' do
  version '3.5.6'
  sha256 '8bcc6fdaf11b306880cdcdead626e894cbfb89b745a5f3f1621deb3c61027913'

  url "http://downloads.plasq.com/comiclife#{version.major}.zip"
  name "Comic Life #{version.major}"
  homepage 'https://plasq.com/apps/comiclife/macwin/'

  app "Comic Life #{version.major}.app"
end
