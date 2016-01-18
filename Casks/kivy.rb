cask 'kivy' do
  version '1.9.0-rev3'
  sha256 'c142114acd4859665cb7daa238194e09984519120d5756e8ab23e3ba7893ce44'

  url "https://kivy.org/downloads/#{version.split('-').first}/Kivy-#{version}-osx.dmg"
  name 'Kivy'
  homepage 'http://kivy.org'
  license :mit

  app 'Kivy.app'
  binary 'Kivy.app/Contents/Resources/script', target: 'kivy'
end
