cask 'lyricsx' do
  version '1.4.1,1846'
  sha256 'b7d93a65fd53de2d3f5a3673ffe49b44bb641f72907e74d5582b5676d25acb53'

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version.before_comma}/LyricsX_#{version.before_comma}+#{version.after_comma}.zip"
  appcast 'https://github.com/ddddxxx/LyricsX/releases.atom'
  name 'LyricsX'
  homepage 'https://github.com/ddddxxx/LyricsX'

  auto_updates true

  app 'LyricsX.app'

  zap trash: '~/ddddxxx.LyricsX'
end
