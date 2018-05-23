cask 'hackmd' do
  version '0.0.3'
  sha256 '5b7b72aaa2b9499ad190112e901decdbb4dfb76e608c4ef7c6e0181c8065594b'

  url "https://github.com/hackmdio/hackmd-desktop/releases/download/v#{version}/HackMD-#{version}.dmg"
  appcast 'https://github.com/hackmdio/hackmd-desktop/releases.atom',
          checkpoint: '355e6e7d7f5eacf5f78d27c302ec66a3a148a5f64e12c52a1862a222e031063b'
  name 'HackMD'
  homepage 'https://github.com/hackmdio/hackmd-desktop'

  app 'HackMD.app'

  zap trash: [
               '~/Library/Application Support/HackMD',
               '~/Library/Saved Application State/com.hackmd.desktop.savedState',
             ]
end
