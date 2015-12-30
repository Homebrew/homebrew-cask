cask 'qtpass' do
  version '1.0.5'
  sha256 '2f1b7e2027c38930d40559e858f06eadcfc695a02e67c5b4052f871c9f23ba2d'

  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom',
          :sha256 => 'b776bee99c3fa79f7d7c7491d72a70563a59a6e0e72eb619a6b0a0dffd832482'
  name 'QtPass'
  homepage 'https://qtpass.org/'
  license :gpl

  app 'QtPass.app'
end
