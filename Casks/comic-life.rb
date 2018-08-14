cask 'comic-life' do
  version '3.5.8'
  sha256 '1c5dca65928e8107879575114854e2acd9228bf4c23e107a756021bef091d4b1'

  url "http://downloads.plasq.com/comiclife#{version.major}.zip"
  appcast "https://s3.amazonaws.com/updater.plasq.com/comiclife#{version.major}-appcast.xml"
  name 'Comic Life'
  homepage 'https://plasq.com/apps/comiclife/macwin/'

  app "Comic Life #{version.major}.app"
end
