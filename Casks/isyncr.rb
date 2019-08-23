cask 'isyncr' do
  if MacOS.version <= :sierra
    version '5.6.5'
    sha256 '8cd6b1c96a902d8810e52aab6a980424370237617bfd3ff574367ff1ce8d4f4e'
  else
    version '5.14.10'
    sha256 '3952db5c64873cf63a5bfb6b308fd992f2eeb67cf838955fc200cd59640803aa'
  end

  url "https://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  appcast 'https://www.jrtstudio.com/files/SlashiSyncr36.js'
  name 'iSyncr Desktop'
  homepage 'https://www.jrtstudio.com/iSyncr-iTunes-for-Android'

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall pkgutil: 'com.jrtstudio.iSyncrDesktop',
            quit:    'com.JRTStudio.iSyncrWiFi'
end
