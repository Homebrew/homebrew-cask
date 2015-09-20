cask :v1 => 'qtpass' do
  version '1.0.1'
  sha256 '9a72a87a9f5408d50aa10ac11d8a5ec13453beb95b2a27ca46a6212132f4685b'

  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom'
  name 'QtPass'
  homepage 'https://qtpass.org/'
  license :gpl

  app 'QtPass.app'
end
