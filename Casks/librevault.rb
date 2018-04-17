cask 'librevault' do
  version '0.1.19'
  sha256 '3ddd7451a8220ee57a8e50cce076bf163c95911eb06e0930a57c902079bd9c23'

  url "https://releases.librevault.com/mac/librevault_v#{version}.dmg"
  appcast 'https://github.com/Librevault/librevault/releases.atom',
          checkpoint: '234797fa8bc0c92e8ae1686751961f0df9a78f76e3269c6f53df6ab45c354932'
  name 'Librevault'
  homepage 'https://librevault.com/'

  app 'Librevault.app'
end
