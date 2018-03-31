cask 'obs' do
  version '21.1.1'
  sha256 '52a422a6cc42c62911c2a8d2d3b569c8ac725d5fcd13ab1f7bcaa23863ef9926'

  # github.com/jp9000/obs-studio was verified as official when first introduced to the cask
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-mac-#{version}-installer.pkg"
  appcast 'https://github.com/jp9000/obs-studio/releases.atom',
          checkpoint: 'f31aeaf114bdad2ebf5e27ff816243dc919f4f794e9c408e4fd24b167433bb71'
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
