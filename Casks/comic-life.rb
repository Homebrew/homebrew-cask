cask 'comic-life' do
  version '3.5.9'
  sha256 'fa282d4f17b577f6c8b8c0838d21d172f22b5fa447e112a63cee550edc60f7bd'

  url "http://downloads.plasq.com/comiclife#{version.major}.zip"
  appcast "https://s3.amazonaws.com/updater.plasq.com/comiclife#{version.major}-appcast.xml"
  name 'Comic Life'
  homepage 'https://plasq.com/apps/comiclife/macwin/'

  app "Comic Life #{version.major}.app"
end
