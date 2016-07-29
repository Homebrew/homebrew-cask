cask 'jetbrains-toolbox' do
  version '1.0.1569'
  sha256 '5e47e404f7b9aa6e5d500eceb59801a9c1dc4da104e29fe1e392956188369b71'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/'
  license :gratis

  app 'JetBrains Toolbox.app'
end
