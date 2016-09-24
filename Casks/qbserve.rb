cask 'qbserve' do
  version '1.48'
  sha256 'ecf4865a0f16209b3dd9ae2c0f052d72db58a1b4603e1c83d091403fc7d24f4b'

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast 'https://qotoqot.com/qbserve/app/appcast.xml',
          checkpoint: 'f8abc0548932003f67b761c1e73f717ba3ce43899c9d1c7b4bfacd7ea2bb3391'
  name 'Qbserve'
  homepage 'https://qotoqot.com/qbserve/'
  license :commercial

  accessibility_access true
  depends_on macos: '>= :yosemite'

  app 'Qbserve.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qotoqot.qbserve.sfl',
                '~/Library/Application Support/Qbserve',
                '~/Library/Caches/com.QotoQot.Qbserve',
                '~/Library/Containers/com.QotoQot.QbserveLogin',
                '~/Library/Preferences/com.qotoqot.qbserve.plist',
              ]
end
