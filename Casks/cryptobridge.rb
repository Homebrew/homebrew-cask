cask 'cryptobridge' do
  version '0.10.5'
  sha256 '8b08168721b9954f941f2d77ea1d2ef5c893fefe5925b161420bf4b027977a53'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/#{version}/CryptoBridge_#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom',
          checkpoint: '4fd4bda4eb59313f6f22a5e8eaed364cb55d587f1b59f599f8ea4e20a25320ec'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'CryptoBridge.app'
end
