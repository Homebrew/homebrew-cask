cask 'flirc' do
  version '3.24.0'
  sha256 '6fffbb04f84d4441caacf3aa8adefb3d7ef8bd48c922af198cb1d474016c7e20'

  url 'https://flirc.tv/software/release/gui/mac/Flirc.dmg'
  appcast 'https://flirc.tv/software/release/gui/mac/appcast.xml'
  name 'Flirc'
  homepage 'https://flirc.tv/'

  app 'Flirc.app'
end
