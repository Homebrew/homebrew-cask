cask 'qbserve' do
  version '1.4'
  sha256 'dde34f2b0b01004a258ca60dcfdda363a981fcd2937662e217d4aff47c2e83b0'

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast 'https://qotoqot.com/qbserve/app/appcast.xml',
          checkpoint: '20b2b68c17f9a93c7ed600d9b2d165bc1e24359ae352fe2035b150a08c8419d5'
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
