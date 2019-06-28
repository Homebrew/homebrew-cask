cask 'lyricsx' do
  version '1.5.0,2139'
  sha256 '620c4a1dbb98e01f690319158eebbdfae3aa5250ab4d766b6cffdbec9e140cf0'

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version.before_comma}/LyricsX_#{version.before_comma}+#{version.after_comma}.zip"
  appcast 'https://github.com/ddddxxx/LyricsX/releases.atom'
  name 'LyricsX'
  homepage 'https://github.com/ddddxxx/LyricsX'

  auto_updates true

  app 'LyricsX.app'

  zap trash: '~/ddddxxx.LyricsX'
end
