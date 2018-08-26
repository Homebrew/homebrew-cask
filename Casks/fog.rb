cask 'fog' do
  version '1.4.4'
  sha256 '555e1a878694595b5367d3172fb87a570793409551f7be07911d1d0b428775c7'

  url "https://github.com/vitorgalvao/fog/releases/download/#{version}/Fog-#{version}-mac.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom'
  name 'Fog'
  homepage 'https://github.com/vitorgalvao/fog'

  app 'mac/Fog.app'

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
