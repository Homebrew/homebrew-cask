cask 'jetbrains-toolbox' do
  version '1.0.1483'
  sha256 'a0bc1684553ecf8d73836728566d80b13d9a818e50b6770a143a6954dec3e168'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/'
  license :gratis

  app 'JetBrains Toolbox.app'
end
