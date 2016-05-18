cask 'subtitles' do
  version '3.2.9'
  sha256 '72b68d998834ec3e6d5f03a1897766b7714cab712ccd5469ce9367b6cacd264c'

  url "http://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast 'http://subtitlesapp.com/updates.xml',
          checkpoint: '1851499d9b99765244ec22db7faf583a82dd1d6e4e63aa04e7d0d1f28106c2ce'
  name 'Subtitles'
  homepage 'http://subtitlesapp.com'
  license :commercial

  app 'Subtitles.app'

  zap delete: '~/Library/Application Support/Subtitles'
end
