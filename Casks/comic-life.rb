cask 'comic-life' do
  version '3.5.6'
  sha256 '8bcc6fdaf11b306880cdcdead626e894cbfb89b745a5f3f1621deb3c61027913'

  url "http://downloads.plasq.com/comiclife#{version.major}.zip"
  appcast "https://s3.amazonaws.com/updater.plasq.com/comiclife#{version.major}-appcast.xml",
          checkpoint: '066b1bca833379a7be5228ba65a572103059b41145ac0019298fe85554b47ec0'
  name 'Comic Life'
  homepage 'https://plasq.com/apps/comiclife/macwin/'

  app "Comic Life #{version.major}.app"
end
