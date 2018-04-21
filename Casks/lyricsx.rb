cask 'lyricsx' do
  version '1.3.0'
  sha256 '6d39e5eb7e903983c58fbf986cd2ad0c782b5ceb994eabac88f00aa7f9501904'

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version}/LyricsX.app.zip"
  appcast 'https://github.com/ddddxxx/LyricsX/releases.atom',
          checkpoint: '932fc65788005b8f38d8f507df73d2045ac4041f3de425f66d2b8f5def2a2845'
  name 'LyricsX'
  homepage 'https://github.com/ddddxxx/LyricsX'

  auto_updates true

  app 'LyricsX.app'

  zap trash: '~/ddddxxx.LyricsX'
end
