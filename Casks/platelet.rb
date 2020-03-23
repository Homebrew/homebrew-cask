cask 'platelet' do
  version '0.0.19'
  sha256 '5a524d75bd5995e182d2ff8a2ff4c45124c8f986c79b2f4d1af5da75c2ff4c28'

  url "https://github.com/amorist/platelet/releases/download/v#{version}/platelet-#{version}.dmg"
  appcast 'https://github.com/amorist/platelet/releases.atom'
  name 'Platelet'
  name 'けっしょうばん'
  homepage 'https://github.com/amorist/platelet'

  app 'platelet.app'
end
