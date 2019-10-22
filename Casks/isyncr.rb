cask 'isyncr' do
  if MacOS.version <= :sierra
    version '5.6.5'
    sha256 '8cd6b1c96a902d8810e52aab6a980424370237617bfd3ff574367ff1ce8d4f4e'
  else
    version '6.0.3'
    sha256 'c7033eb946a6a6104a75cc5c182506f47a0399b54f3b4ce486e82a1c7d040154'
  end

  url "https://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  appcast 'https://www.jrtstudio.com/files/SlashiSyncr36.js'
  name 'iSyncr Desktop'
  homepage 'https://www.jrtstudio.com/iSyncr-iTunes-for-Android'

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall pkgutil: 'com.jrtstudio.iSyncrDesktop',
            quit:    'com.JRTStudio.iSyncrWiFi'
end
