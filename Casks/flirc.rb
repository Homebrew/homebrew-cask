cask 'flirc' do
  version '3.20.4'
  sha256 '471f5ac1c7f238e233b6562ecbce93606baba14ed05bd113234fe213a3063fb6'

  url 'https://flirc.tv/software/release/gui/mac/Flirc.dmg'
  appcast 'https://flirc.tv/software/release/gui/mac/appcast.xml'
  name 'Flirc'
  homepage 'https://flirc.tv/'

  app 'Flirc.app'
end
