cask 'comic-life' do
  version '3.5.7'
  sha256 '6b1ba855f3738e103411d9595e2e67008de85ec25bd91b99659c674182b3fa1d'

  url "http://downloads.plasq.com/comiclife#{version.major}.zip"
  appcast "https://s3.amazonaws.com/updater.plasq.com/comiclife#{version.major}-appcast.xml",
          checkpoint: 'afe438be5128c6d6beb9204df5c874e74381459800f7a8c431bf1a032c43fcd6'
  name 'Comic Life'
  homepage 'https://plasq.com/apps/comiclife/macwin/'

  app "Comic Life #{version.major}.app"
end
