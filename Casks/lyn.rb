cask 'lyn' do
  version '1.8.1'
  sha256 '0785459c5777793c5e3808dca15240a1afc3e86cfd37dd73119121e85d43b636'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '0a0b302988f4dae1ad0914a561deb127b9f036c3c424f213e5b9fd8e35e4fd0c'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'

  app 'Lyn.app'
end
