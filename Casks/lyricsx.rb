cask 'lyricsx' do
  version '1.2.3'
  sha256 '70066b02b54a7c8ce84a1c7a63e7ab7f680f27e109d9361756085f6efce21fd2'

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version}/LyricsX.app.zip"
  appcast 'https://github.com/ddddxxx/LyricsX/releases.atom',
          checkpoint: '8ad7d3ff76ffc5d54f4f908c146929d2fa66b20402490db177446c9f40771571'
  name 'LyricsX'
  homepage 'https://github.com/ddddxxx/LyricsX'

  auto_updates true

  app 'LyricsX.app'

  zap trash: '~/ddddxxx.LyricsX'
end
