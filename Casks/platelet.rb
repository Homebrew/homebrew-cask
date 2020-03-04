cask 'platelet' do
  version '0.0.14'
  sha256 '93e1d15ed8bf0eed4b9ee2faf7d22f867faa4b62c2e5c1606a4a25c29d533705'

  url "https://github.com/amorist/platelet/releases/download/v#{version}/platelet-#{version}.dmg"
  appcast 'https://github.com/amorist/platelet/releases.atom'
  name 'Platelet'
  name 'けっしょうばん'
  homepage 'https://github.com/amorist/platelet'

  app 'platelet.app'
end
