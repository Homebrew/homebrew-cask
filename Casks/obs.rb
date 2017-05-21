cask 'obs' do
  version '19.0.1'
  sha256 '7e8ccb69971daa44049f3d4978b6d80cc857f0815e55059b859484b00eaf07e9'

  # github.com/jp9000/obs-studio was verified as official when first introduced to the cask
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-mac-#{version}-installer.pkg"
  appcast 'https://github.com/jp9000/obs-studio/releases.atom',
          checkpoint: '0a9e66f8f20bdc7b6b82b6e176d6ceb3f33808e5fd9e6e282749a30dbf444811'
  name 'OBS'
  homepage 'https://obsproject.com/'

  pkg "obs-mac-#{version}-installer.pkg"

  uninstall pkgutil: [
                       'org.obsproject.pkg.obs-studio',
                       'zakk.lol.SyphonInject',
                     ]

  zap delete: [
                '/Library/Application Support/obs-studio',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.obsproject.obs-studio.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/zakk.lol.syphoninject.sfl',
                '~/Library/Application Support/obs-studio',
                '/private/var/db/receipts/zakk.lol.SyphonInject.bom',
                '/private/var/db/receipts/zakk.lol.SyphonInject.plist',
              ]
end
