cask 'gog-downloader' do
  version '1.2_512'
  sha256 '353604a2123feacf438c6586b3ec20967dca637b0a97d36203adbc3e1dfdefce'

  url "https://static.gog.com/download/d3/mac-stable/GOG_Downloader_#{version}.zip"
  appcast 'https://api.gog.com/en/downloader2/status/mac-stable',
          checkpoint: '60f99d34cce116b973608660d9788c437cc1af77a9e447aee9b5b25e74c7cf2e'
  name 'GOG Downloader'
  homepage 'https://www.gog.com/downloader'

  app 'GOG Downloader.app'

  zap trash: [
               '~/Library/Application Support/GOG Downloader',
               '~/Library/Caches/com.gog.downloader',
               '~/Library/Preferences/com.gog.downloader.plist',
               '~/Library/Saved Application State/com.gog.downloader.savedState',
             ]
end
