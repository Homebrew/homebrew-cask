cask 'qbserve' do
  version '1.45'
  sha256 '0af52f6e3732e9f833e5030356df4a1e5ef81fe05fc966a6e7d3a442312481bb'

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast 'https://qotoqot.com/qbserve/app/appcast.xml',
          checkpoint: 'f0d4249c55eb4cf0472ac85fe0a3b10a6eb000d3167a7fc93b5905ab89335524'
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
