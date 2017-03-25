cask 'obs' do
  version '18.0.1'
  sha256 'a0f353fa60ef78862814c1a11cd8e02382e0ec6d761ca1dddb4427ab37408957'

  # github.com/jp9000/obs-studio was verified as official when first introduced to the cask
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-mac-#{version}-installer.pkg"
  appcast 'https://github.com/jp9000/obs-studio/releases.atom',
          checkpoint: 'b9766cf7354bc92b3eba3510afee7be9e22dd85a9126a8371a5c521a94fbe6bc'
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
