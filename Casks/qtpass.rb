cask :v1 => 'qtpass' do
  version '1.0.3'
  sha256 '404dad56342547d274aeb746f92039050eb3a4e67ae2164d3a141fb095ff8a75'

  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom'
  name 'QtPass'
  homepage 'https://qtpass.org/'
  license :gpl

  app 'QtPass.app'
end
