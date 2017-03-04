cask 'librevault' do
  version '0.1.19'
  sha256 '3ddd7451a8220ee57a8e50cce076bf163c95911eb06e0930a57c902079bd9c23'

  url "https://releases.librevault.com/mac/librevault_v#{version}.dmg"
  appcast 'https://github.com/Librevault/librevault/releases.atom',
          checkpoint: '477d27ceb07eee4ac513830da666a278c4e89557c1d5b143627b239a6b0396ba'
  name 'Librevault'
  homepage 'https://librevault.com/'

  app 'Librevault.app'
end
