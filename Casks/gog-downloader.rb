class GogDownloader < Cask
  version '1.2.512'
  sha256 '353604a2123feacf438c6586b3ec20967dca637b0a97d36203adbc3e1dfdefce'

  url 'http://static.gog.com/download/d3/mac-stable/GOG_Downloader_1.2_512.zip'
  appcast 'https://api.gog.com/en/downloader2/status/mac-stable'
  homepage 'http://www.gog.com/downloader'

  app 'GOG Downloader.app'
end
