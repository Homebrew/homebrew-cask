cask 'fog' do
  version '1.4.0'
  sha256 '4762dcccdaa3b36ab3eadb26e4d8b22bbc04708896b58fb8ca27128d72dd57ac'

  url "https://github.com/vitorgalvao/fog/releases/download/#{version}/Fog-#{version}-mac.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom',
          checkpoint: '09de05dd5772e5e9613eeff09cda82de5e4465b5db4135cb868a7c14f97af1cf'
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
