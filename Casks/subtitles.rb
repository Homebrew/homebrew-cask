cask 'subtitles' do
  version '3.2.11'
  sha256 '72b68d998834ec3e6d5f03a1897766b7714cab712ccd5469ce9367b6cacd264c'

  url "https://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'https://subtitlesapp.com/updates.xml',
          checkpoint: '145d783869fd02ab9dd037199ecf8f6b1a1e0db41c087f7e2829c3bbf9c50127'
  name 'Subtitles'
  homepage 'https://subtitlesapp.com/'

  app 'Subtitles.app'

  zap delete: '~/Library/Application Support/Subtitles'
end
