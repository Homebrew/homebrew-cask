cask :v1 => 'menubar-colors' do
  version '1.4.0'
  sha256 '449ed626a4b8fba4695cccff54cfc78aa5d85a12a20fdba58082c2c9b28af3bf'

  url "https://github.com/nvzqz/menubar-colors/releases/download/v#{version}/Menubar-Colors.zip"
  appcast 'https://github.com/nvzqz/menubar-colors/releases.atom'
  name 'Menubar Colors'
  homepage 'https://github.com/nvzqz/Menubar-Colors'
  license :mit

  app 'Menubar Colors.app'
end
