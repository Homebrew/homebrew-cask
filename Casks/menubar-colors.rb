cask 'menubar-colors' do
  version '2.3.0'
  sha256 'b12188d45b57ae8614d9fc25d97c8302936916655ac6c8b19b9ca629c9ee7367'

  url "https://github.com/nvzqz/menubar-colors/releases/download/v#{version}/Menubar-Colors.zip"
  appcast 'https://github.com/nvzqz/menubar-colors/releases.atom',
          checkpoint: '09c0d9918537c697c593da184a290d773a6b7c1cf9ead564dcef63721f2af1af'
  name 'Menubar Colors'
  homepage 'https://github.com/nvzqz/Menubar-Colors'

  app 'Menubar Colors.app'
end
