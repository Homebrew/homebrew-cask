cask :v1 => 'kivy' do
  version '1.9.0'
  sha256 '1efeb880e13c4bed97bd96bcaac6e57f18ea6dde21ea1ae3ab1eddf713430ab5'

  url "http://kivy.org/downloads/#{version}/Kivy-#{version}-osx.dmg"
  name 'Kivy'
  homepage 'http://kivy.org'
  license :mit

  app 'Kivy.app'
end
