cask 'gopass-ui' do
  version '0.4.0'
  sha256 '41453158709801fa2993168a5997556acacaa328eeab1ccd34cd0979cb6b6aeb'

  url "https://github.com/codecentric/gopass-ui/releases/download/v#{version}/Gopass.UI-#{version}.dmg"
  appcast 'https://github.com/codecentric/gopass-ui/releases.atom'
  name 'Gopass UI'
  homepage 'https://github.com/codecentric/gopass-ui'

  app 'Gopass UI.app'

  zap trash: '~/.config/gopass'
end
