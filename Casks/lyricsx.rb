cask 'lyricsx' do
  version '1.2.2'
  sha256 '98c8d6cf9ee404935b9268ef471d82f49b39d8b3a3aa826f633f353bf378dd82'

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version}/LyricsX.app.zip"
  appcast 'https://github.com/ddddxxx/LyricsX/releases.atom',
          checkpoint: '4d575284c6e3503aa7a91a3ded2bcb9d8e789d21e06b658cda2bce64f74a6675'
  name 'LyricsX'
  homepage 'https://github.com/ddddxxx/LyricsX'

  auto_updates true

  app 'LyricsX.app'

  zap trash: '~/ddddxxx.LyricsX'
end
