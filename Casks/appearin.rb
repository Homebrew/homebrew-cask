cask 'appearin' do
  version '1.0.1'
  sha256 'ca3ac7a62950b7f87e0e7a3eeb3eabc51cade88486bf08d9d90707b77ecea976'

  url "https://github.com/vitorgalvao/appear.in/releases/download/#{version}/appear.in-#{version}-mac.zip"
  appcast 'https://github.com/vitorgalvao/appear.in/releases.atom',
          checkpoint: '06be291e9943fecc79fc5a4cc49b3227f76647e5c859e7135e0507b9ac33cc28'
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
