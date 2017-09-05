cask 'arq' do
  version '5.9.2'
  sha256 'a4f1b25d0d3848df6dc9eeb095891234f6ff13974ffae1076480d829028d9b4f'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '2d6445a7dfb0f6294a15081a5ecb9cafdefbe02ef4459517b56441d7d5bb3738'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
