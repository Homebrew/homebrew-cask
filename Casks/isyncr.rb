cask 'isyncr' do
  if MacOS.version <= :sierra
    version '5.6.5'
    sha256 '8cd6b1c96a902d8810e52aab6a980424370237617bfd3ff574367ff1ce8d4f4e'
  else
    version '5.14.9'
    sha256 '886877b524148cd305189088b8cb54ee5599ab75186493d7e69624cc7d19fed6'
  end

  url "https://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  name 'iSyncr Desktop'
  homepage 'https://www.jrtstudio.com/iSyncr-iTunes-for-Android'

  depends_on macos: '>= :mountain_lion'

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall pkgutil: 'com.jrtstudio.iSyncrDesktop',
            quit:    'com.JRTStudio.iSyncrWiFi'
end
