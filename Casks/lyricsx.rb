cask 'lyricsx' do
  version '1.2.0'
  sha256 'b83a0ed50512192f3f068359528637977674bd00f744e64a8d2a053da5c79d8e'

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version}/LyricsX.app.zip"
  appcast 'https://github.com/ddddxxx/LyricsX/releases.atom',
          checkpoint: 'e20af0eae301c46b006fae0b658d3112e53db357dc58f752ee5dcbfe9b8578d3'
  name 'LyricsX'
  homepage 'https://github.com/ddddxxx/LyricsX'

  auto_updates true

  app 'LyricsX.app'

  zap trash: '~/ddddxxx.LyricsX'
end
