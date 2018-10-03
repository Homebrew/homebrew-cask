cask 'comic-life' do
  version '3.5.10'
  sha256 '982cfe8b8d17946c0a04ef4d3440884e80c64247c7174554847096fec5c69064'

  url "http://downloads.plasq.com/comiclife#{version.major}.zip"
  appcast "https://s3.amazonaws.com/updater.plasq.com/comiclife#{version.major}-appcast.xml"
  name 'Comic Life'
  homepage 'https://plasq.com/apps/comiclife/macwin/'

  app "Comic Life #{version.major}.app"
end
