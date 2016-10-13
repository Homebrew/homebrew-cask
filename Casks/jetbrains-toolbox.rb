cask 'jetbrains-toolbox' do
  version '1.0.2002'
  sha256 '3e6a71dbd768ac6ea277728a7bd0fe6c161d8f228260b2a46fc9cf2936216178'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/'

  app 'JetBrains Toolbox.app'
end
