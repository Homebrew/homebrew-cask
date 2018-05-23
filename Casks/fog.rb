cask 'fog' do
  version '1.4.2'
  sha256 'f1c68466539b8ad9e0fc8c05413cc9ee18b1be58872b698e60d9d08ebf4502e4'

  url "https://github.com/vitorgalvao/fog/releases/download/#{version}/Fog-#{version}-mac.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom',
          checkpoint: 'bce87096bbb42438431dac20096735cbd5fbf820d6d38ee7f3e87b5248e73422'
  name 'Fog'
  homepage 'https://github.com/vitorgalvao/fog'

  app 'Fog.app'

  uninstall quit: 'com.vitorgalvao.fog'

  zap trash: [
               '~/Library/Application Support/Fog',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vitorgalvao.fog.sfl*',
               '~/Library/Caches/Fog',
               '~/Library/Preferences/com.vitorgalvao.fog.helper.plist',
               '~/Library/Preferences/com.vitorgalvao.fog.plist',
               '~/Library/Saved Application State/com.vitorgalvao.fog.savedState',
             ]
end
