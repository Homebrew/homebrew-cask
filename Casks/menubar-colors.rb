cask :v1 => 'menubar-colors' do
  version '2.3.0'
  sha256 'b12188d45b57ae8614d9fc25d97c8302936916655ac6c8b19b9ca629c9ee7367'

  url "https://github.com/nvzqz/menubar-colors/releases/download/v#{version}/Menubar-Colors.zip"
  appcast 'https://github.com/nvzqz/menubar-colors/releases.atom'
  name 'Menubar Colors'
  homepage 'https://github.com/nvzqz/Menubar-Colors'
  license :mit

  app 'Menubar Colors.app'
end
