cask 'arq6' do
  version '6.2.9'
  sha256 'c26e4cf9f4b6c552960cfb6f11eb1ce829a2b10a8cfed8d90b1525e72546d97b'

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
