cask 'arq' do
  version '6.2.0'
  sha256 'bd127a45d3c6635340883618f9eec8cc876ef201d52b289aa7906392cab30698'

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
