cask 'arq' do
  version '5.11'
  sha256 '71282640881500607f97a4f0ccfdb46457c1582cd54e83ca47c2abf2620e83da'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: 'd16b129cffc1503703ff2be63c8202348f58dddba15de21ffefd00486388264f'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
