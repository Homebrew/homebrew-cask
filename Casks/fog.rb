cask 'fog' do
  version '1.4.3'
  sha256 '487675c4c5592c1ad93f382f09cab9ced6f22a047837687f05b85f33af74f38a'

  url "https://github.com/vitorgalvao/fog/releases/download/#{version}/Fog-#{version}-mac.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom'
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
