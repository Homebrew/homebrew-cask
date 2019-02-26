cask 'obs' do
  version '23.0'
  sha256 '8f7364ab91c99626dd7c1e0b3cf255cca3e7a85c14d48e0ea13baa003e4396b0'

  url "https://cdn-fastly.obsproject.com/downloads/obs-mac-#{version}-installer.pkg"
  appcast 'https://github.com/obsproject/obs-studio/releases.atom'
  name 'OBS'
  homepage 'https://obsproject.com/'

  pkg "obs-mac-#{version}-installer.pkg"

  uninstall pkgutil: [
                       'org.obsproject.pkg.obs-studio',
                       'zakk.lol.SyphonInject',
                     ]

  zap trash: [
               '/Library/Application Support/obs-studio',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.obsproject.obs-studio.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/zakk.lol.syphoninject.sfl*',
               '~/Library/Application Support/obs-studio',
               '/private/var/db/receipts/zakk.lol.SyphonInject.bom',
               '/private/var/db/receipts/zakk.lol.SyphonInject.plist',
             ]
end
