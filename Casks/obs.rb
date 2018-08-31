cask 'obs' do
  version '22.0.2'
  sha256 'cf7d002dd6f98b35d1c5a59cbad4e3cd6a02e034f8d160859247f1f3e743bc30'

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
