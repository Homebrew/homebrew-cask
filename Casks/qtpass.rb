cask :v1 => 'qtpass' do
  version '1.0.2'
  sha256 '0e57aca0b2d9941bfc04b4c419f5e4f1a021f9efc6a38450d11f89e6fecaec02'

  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom'
  name 'QtPass'
  homepage 'https://qtpass.org/'
  license :gpl

  app 'QtPass.app'
end
