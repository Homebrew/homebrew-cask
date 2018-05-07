cask 'appearin' do
  version '1.0.1'
  sha256 '1abed8b302df30153a843fc94d0264cc29f95498de146fc3e0fe4d863e9b2418'

  url "https://github.com/vitorgalvao/appear.in/releases/download/#{version}/appear.in-#{version}-mac.zip"
  appcast 'https://github.com/vitorgalvao/appear.in/releases.atom',
          checkpoint: 'd81f6a95500e79fa61a039e78d8e3bfbfff718ded7093adbae25259b9e9d7736'
  name 'appear.in'
  homepage 'https://github.com/vitorgalvao/appear.in'

  app 'appear.in.app'

  uninstall quit: 'com.vitorgalvao.appear.in'

  zap trash: [
               '~/Library/Application Support/appear.in',
               '~/Library/Caches/appear.in',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vitorgalvao.appear.in.sfl*',
               '~/Library/Saved Application State/com.vitorgalvao.appear.in.savedState',
             ]
end
