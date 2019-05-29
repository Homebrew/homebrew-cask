cask 'jetbrains-toolbox' do
  version '1.14.5179'
  sha256 '5cba8fce040921dc690fb4d2a86ed7fd0af898e60d9b28a01e7ea122ce4743b5'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
