cask 'bookscan-downloader' do
  version '2.6.8'
  sha256 'f5c172a02803524fd0dec6b0a1556af5f9248f4eeb35a54caa3a1b3228fd616d'

  url "http://system.bookscan.co.jp/downloader/bookscanDownloader#{version}.air"
  name 'BOOKSCAN Downloader'
  name 'BOOKSCAN ダウンローダー'
  homepage 'http://bookscan.co.jp/'

  depends_on cask: 'adobe-air'

  app "BOOKSCAN ダウンローダー #{version.major_minor}β.app"
end
