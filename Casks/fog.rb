cask 'fog' do
  version '1.4.1'
  sha256 '4c46bcf8f98e2eaa910b0c60aec58299701d4416844e0346338b20c031e804d5'

  url "https://github.com/vitorgalvao/fog/releases/download/#{version}/Fog-#{version}-mac.zip"
  appcast 'https://github.com/vitorgalvao/fog/releases.atom',
          checkpoint: 'f285b415f6f3551d8bbe14a12aaad6d2f712497ef450fc8a3d8fe5354e1a6007'
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
