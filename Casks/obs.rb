cask 'obs' do
  version '18.0.1'
  sha256 'a0f353fa60ef78862814c1a11cd8e02382e0ec6d761ca1dddb4427ab37408957'

  # github.com/jp9000/obs-studio was verified as official when first introduced to the cask
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-mac-#{version}-installer.pkg"
  appcast 'https://github.com/jp9000/obs-studio/releases.atom',
          checkpoint: 'b85bdd5f84d3398e45bf7d388945c7fbb70328f354df54a6245fbbb08d0b8903'
  name 'OBS'
  homepage 'https://obsproject.com/'

  pkg "obs-mac-#{version}-installer.pkg"

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
