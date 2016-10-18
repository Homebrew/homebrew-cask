cask 'librevault' do
  version '0.1.18.7'
  sha256 '9a825fbf1e40130bb95a7c26e7981fd5317442c2087e3031fda803f66fa8a97a'

  url "https://releases.librevault.com/mac/librevault_v#{version}.dmg"
  appcast 'https://github.com/Librevault/librevault/releases.atom',
          checkpoint: '7bb5563f93f7b3deed9a0875b008ab4d46b58000aca379dff5d8a40b9d90bc5d'
  name 'Librevault'
  homepage 'https://librevault.com/'

  app 'Librevault.app'
end
