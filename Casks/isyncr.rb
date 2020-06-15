cask 'isyncr' do
  if MacOS.version <= :lion
    version '5.0.8'
    sha256 '8cd6b1c96a902d8810e52aab6a980424370237617bfd3ff574367ff1ce8d4f4e'
    elseif MacOS.version <= :mojave
    version '5.14.11'
    sha256 '3952db5c64873cf63a5bfb6b308fd992f2eeb67cf838955fc200cd59640803aa'
  else
    version '6.0.3'
    sha256 'c7033eb946a6a6104a75cc5c182506f47a0399b54f3b4ce486e82a1c7d040154'
  end

  url "https://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  appcast 'https://www.jrtstudio.com/files/SlashiSyncr38.js'
  name 'iSyncr Desktop'
  homepage 'https://www.jrtstudio.com/iSyncr-iTunes-for-Android'

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall pkgutil: 'com.jrtstudio.iSyncrDesktop',
            quit:    'com.JRTStudio.iSyncrWiFi'
end
