cask 'lyricsx' do
  version '1.3.1'
  sha256 '1183404fde863a13825ac34139b4f3af184b5ce16fc4f775850d6fa847d452d3'

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version}/LyricsX.app.zip"
  appcast 'https://github.com/ddddxxx/LyricsX/releases.atom',
          checkpoint: '0f3a22b1292e451587166c258435d063e7808aaceafcd56563b6b169dbf09da2'
  name 'LyricsX'
  homepage 'https://github.com/ddddxxx/LyricsX'

  auto_updates true

  app 'LyricsX.app'

  zap trash: '~/ddddxxx.LyricsX'
end
