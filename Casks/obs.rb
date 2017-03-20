cask 'obs' do
  version '0.16.2'
  sha256 'ab7488aed9d245e9ddee09abc63562929cd40de6f4a385d6af4aac07b01a0217'

  # github.com/jp9000/obs-studio was verified as official when first introduced to the cask
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-#{version}-installer.dmg"
  appcast 'https://github.com/jp9000/obs-studio/releases.atom',
          checkpoint: '5006c07fda6654a0e401b02617c38eda87ea7df40ffbcb678e1c5ca61f5955d0'
  name 'OBS'
  homepage 'https://obsproject.com/'

  pkg 'OBS.pkg'

  uninstall pkgutil: 'org.obsproject.pkg.obs-studio',
            delete:  '/Applications/SyphonInject.app'

  zap delete: [
                '/Library/Application Support/obs-studio',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.obsproject.obs-studio.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/zakk.lol.syphoninject.sfl',
                '~/Library/Application Support/obs-studio',
                '/private/var/db/receipts/zakk.lol.SyphonInject.bom',
                '/private/var/db/receipts/zakk.lol.SyphonInject.plist',
              ]
end
