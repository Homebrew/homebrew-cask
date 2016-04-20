cask 'kivy' do
  version '1.9.1'
  sha256 '3fa84bf994902891ed9b0fbf5477e771fa4bdf07edd981d8062ba525c168d887'

  url "https://kivy.org/downloads/#{version.split('-').first}/Kivy-#{version}-osx-python2.7z"
  name 'Kivy'
  homepage 'http://kivy.org'
  license :mit

  app 'Kivy2.app', target: 'Kivy.app'
  binary 'Kivy2.app/Contents/Resources/script', target: 'kivy'
end
