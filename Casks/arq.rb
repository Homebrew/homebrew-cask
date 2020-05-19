cask 'arq' do
  version '6.2.21'
  sha256 '3987358362f5fda511eec3f1a203942f2f3e4b999eb20df362bd1883bc0eb79f'

  url "https://www.arqbackup.com/download/arqbackup/Arq#{version.major}.pkg"
  appcast "https://www.arqbackup.com/download/arqbackup/arq#{version.major}_release_notes.html"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  pkg "Arq#{version.major}.pkg"

  uninstall pkgutil:   'com.haystacksoftware.Arq',
            quit:      'com.haystacksoftware.Arq',
            launchctl: [
                         'com.haystacksoftware.ArqMonitor',
                         'com.haystacksoftware.arqagent',
                       ]
end
