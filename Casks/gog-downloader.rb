cask :v1 => 'gog-downloader' do
  version '1.2.512'
  sha256 '353604a2123feacf438c6586b3ec20967dca637b0a97d36203adbc3e1dfdefce'

  url 'http://static.gog.com/download/d3/mac-stable/GOG_Downloader_1.2_512.zip'
  appcast 'https://api.gog.com/en/downloader2/status/mac-stable',
          :sha256 => '91f8021f41c170428d3ff18770356284c0239c8d8a47f2eccb2d5d1c222829c5'
  homepage 'http://www.gog.com/downloader'
  license :unknown

  app 'GOG Downloader.app'
end
