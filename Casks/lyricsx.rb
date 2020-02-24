cask 'lyricsx' do
  version '1.5.1,2158'
  sha256 '922c87cb80559a9c3d1f1ba39c35555603ffeafaefaa61ec380a76c0f7a056cc'

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version.before_comma}/LyricsX_#{version.before_comma}+#{version.after_comma}.zip"
  appcast 'https://github.com/ddddxxx/LyricsX/releases.atom'
  name 'LyricsX'
  homepage 'https://github.com/ddddxxx/LyricsX'

  auto_updates true

  app 'LyricsX.app'

  zap trash: '~/ddddxxx.LyricsX'
end
