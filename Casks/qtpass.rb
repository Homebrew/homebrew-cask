cask :v1 => 'qtpass' do
  version '1.0.5'
  sha256 '2f1b7e2027c38930d40559e858f06eadcfc695a02e67c5b4052f871c9f23ba2d'

  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom'
  name 'QtPass'
  homepage 'https://qtpass.org/'
  license :gpl

  app 'QtPass.app'
end
