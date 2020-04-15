cask 'arq' do
  version '6.1.11'
  sha256 '2be994991a7336ea53660e763d939cd23b43b44212c02bbe9358a7fd070a8bc9'

  url "https://www.arqbackup.com/download/arqbackup/Arq#{version.major}.pkg"
  appcast 'https://www.arqbackup.com/'
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
