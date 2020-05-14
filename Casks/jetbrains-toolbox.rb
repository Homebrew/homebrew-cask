cask 'jetbrains-toolbox' do
  version '1.17.6856'
  sha256 '82e958aadfba19557836d4830d47f4dcad0c2970ff9bb7bbc31f0e441273aa4f'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
