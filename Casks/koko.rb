cask 'koko' do
  version '0.2.1'
  sha256 '74b0d69d372b6f4db481f51b283cdab572bd4042731247cc300d41bfbcc199ed'

  url "https://github.com/KokoIRC/koko/releases/download/v#{version}/koko-mac.zip"
  appcast 'https://github.com/KokoIRC/koko/releases.atom',
          checkpoint: '85f27bf39a1c83f87db2f5e6aecc85640c5dabf99bc43130b4a2315b546934f8'
  name 'koko'
  homepage 'https://github.com/KokoIRC/koko'

  app 'koko.app'

  zap trash: [
               '~/Library/Application Support/koko',
               '~/Library/Caches/koko',
               '~/Library/Preferences/net.noraesae.koko.plist',
               '~/Library/Saved Application State/net.noraesae.koko.savedState',
             ]
end
