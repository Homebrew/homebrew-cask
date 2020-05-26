cask 'arq' do
  version '6.2.27'
  sha256 '9da2a74b1789480d5fdb9ca42dd7f9161a6bfc87227151bb9e491c8f541be128'

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
