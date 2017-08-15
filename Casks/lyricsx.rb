cask 'lyricsx' do
  version '1.1.4'
  sha256 '40e96ae29916c791d783c4ebabcfc715c60dc0e5bf0e6bae6e87a149974050a5'

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version}/LyricsX.app.zip"
  appcast 'https://github.com/ddddxxx/LyricsX/releases.atom',
          checkpoint: '380de848d028e25585aaed73dcda5360d8b137eee6d9493b1c8efeae00a793ec'
  name 'LyricsX'
  homepage 'https://github.com/ddddxxx/LyricsX'

  auto_updates true

  app 'LyricsX.app'

  zap trash: '~/ddddxxx.LyricsX'
end
