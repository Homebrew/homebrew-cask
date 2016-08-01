cask 'jetbrains-toolbox' do
  version '1.0.1653'
  sha256 '20d95a5378c572e2fe3f6bb05e9df588769614d87bbe83b46ed259ebcc9abb14'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/'
  license :gratis

  app 'JetBrains Toolbox.app'
end
