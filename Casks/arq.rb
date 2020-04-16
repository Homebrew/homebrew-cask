cask 'arq' do
  version '6.2.1'
  sha256 'd649bef9f3a26fd26fa13c3c0bb71f03987c1d01c08a91101783d02175504f2e'

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
