cask 'gog-downloader' do
  version '1.2_512'
  sha256 '353604a2123feacf438c6586b3ec20967dca637b0a97d36203adbc3e1dfdefce'

  url "https://static.gog.com/download/d3/mac-stable/GOG_Downloader_#{version}.zip"
  name 'GOG Downloader'
  homepage 'https://www.gog.com/downloader'
  license :gratis

  app 'GOG Downloader.app'

  zap delete: [
                '~/Library/Application Support/GOG Downloader',
                '~/Library/Caches/com.gog.downloader',
                '~/Library/Preferences/com.gog.downloader.plist',
                '~/Library/Saved Application State/com.gog.downloader.savedState',
              ]
end
