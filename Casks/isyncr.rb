cask 'isyncr' do
  if MacOS.version <= :sierra
    version '5.6.5'
    sha256 '8cd6b1c96a902d8810e52aab6a980424370237617bfd3ff574367ff1ce8d4f4e'
  else
    version '6.0.2'
    sha256 'e71ba53483e6028996d76defdae2413761931e1e1c2872d42d2dcb410547c3a6'
  end

  url "https://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  appcast 'https://www.jrtstudio.com/files/SlashiSyncr36.js'
  name 'iSyncr Desktop'
  homepage 'https://www.jrtstudio.com/iSyncr-iTunes-for-Android'

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall pkgutil: 'com.jrtstudio.iSyncrDesktop',
            quit:    'com.JRTStudio.iSyncrWiFi'
end
