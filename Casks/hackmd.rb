cask 'hackmd' do
  version '0.0.3'
  sha256 '5b7b72aaa2b9499ad190112e901decdbb4dfb76e608c4ef7c6e0181c8065594b'

  url "https://github.com/hackmdio/hackmd-desktop/releases/download/v#{version}/HackMD-#{version}.dmg"
  appcast 'https://github.com/hackmdio/hackmd-desktop/releases.atom',
          checkpoint: '1ad1bec0cb8d094e1fe0d011ec3cb726264eedd7ef8287bac1aeb8b909f36eae'
  name 'HackMD'
  homepage 'https://github.com/hackmdio/hackmd-desktop'

  app 'HackMD.app'

  zap delete: [
                '~/Library/Application Support/HackMD',
                '~/Library/Saved Application State/com.hackmd.desktop.savedState',
              ]
end
