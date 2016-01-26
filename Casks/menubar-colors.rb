cask 'menubar-colors' do
  version '2.3.0'
  sha256 'b12188d45b57ae8614d9fc25d97c8302936916655ac6c8b19b9ca629c9ee7367'

  url "https://github.com/nvzqz/menubar-colors/releases/download/v#{version}/Menubar-Colors.zip"
  appcast 'https://github.com/nvzqz/menubar-colors/releases.atom',
          checkpoint: '33fc643995e90f021081ec75b367cf6cda21706f0fa676f40d82f3ddd5328a3b'
  name 'Menubar Colors'
  homepage 'https://github.com/nvzqz/Menubar-Colors'
  license :mit

  app 'Menubar Colors.app'
end
