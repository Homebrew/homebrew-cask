cask :v1 => 'dictater' do
  version '1.0'
  sha256 'd97d69344e690b55da7bfdad0da16d31ba0b4b7f79e4d9824cd8d34f24dba782'

  url "https://github.com/Nosrac/Dictater/releases/download/#{version}/Dictater.app.zip"
  appcast 'https://github.com/Nosrac/Dictater/releases.atom'
  name 'Dictater'
  homepage 'https://nosrac.github.io/Dictater/'
  license :mit

  app 'Dictater.app'
end
