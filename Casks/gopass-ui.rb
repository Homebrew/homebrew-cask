cask 'gopass-ui' do
  version '0.6.0'
  sha256 '8fd4845d3ae4e4f0caa92f2f8140e09d9538736a5f61f402959f6909b7b1c4b6'

  url "https://github.com/codecentric/gopass-ui/releases/download/v#{version}/Gopass.UI-#{version}.dmg"
  appcast 'https://github.com/codecentric/gopass-ui/releases.atom'
  name 'Gopass UI'
  homepage 'https://github.com/codecentric/gopass-ui'

  app 'Gopass UI.app'

  zap trash: '~/.config/gopass'
end
