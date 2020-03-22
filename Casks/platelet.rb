cask 'platelet' do
  version '0.0.18'
  sha256 '04050d1a7daf05b20377067253610376b9ba47a560ae2adaa19b619702617f5c'

  url "https://github.com/amorist/platelet/releases/download/v#{version}/platelet-#{version}.dmg"
  appcast 'https://github.com/amorist/platelet/releases.atom'
  name 'Platelet'
  name 'けっしょうばん'
  homepage 'https://github.com/amorist/platelet'

  app 'platelet.app'
end
