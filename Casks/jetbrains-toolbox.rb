cask 'jetbrains-toolbox' do
  version '1.0.2095'
  sha256 '3776ee7fc13e86eefc180c463d8e7ae2df1862847473cc454780bf0f6e35aa0e'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/'

  app 'JetBrains Toolbox.app'
end
