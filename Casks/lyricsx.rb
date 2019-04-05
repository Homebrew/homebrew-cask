cask 'lyricsx' do
  version '1.4.5,2076'
  sha256 'e2bfc8a423544bf6036abbed118d7edf25433bccac4fbcbb1401ab7fb413d063'

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version.before_comma}/LyricsX_#{version.before_comma}_#{version.after_comma}.zip"
  appcast 'https://github.com/ddddxxx/LyricsX/releases.atom'
  name 'LyricsX'
  homepage 'https://github.com/ddddxxx/LyricsX'

  auto_updates true

  app 'LyricsX.app'

  zap trash: '~/ddddxxx.LyricsX'
end
