cask 'obs' do
  version '21.1.1'
  sha256 '52a422a6cc42c62911c2a8d2d3b569c8ac725d5fcd13ab1f7bcaa23863ef9926'

  # github.com/obsproject/obs-studio was verified as official when first introduced to the cask
  url "https://github.com/obsproject/obs-studio/releases/download/#{version}/obs-mac-#{version}-installer.pkg"
  appcast 'https://github.com/obsproject/obs-studio/releases.atom',
          checkpoint: '4c487c3ce8a5cc21469607cb3382b0704d0cae40dd3af1a110a1ea4b064c7412'
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
