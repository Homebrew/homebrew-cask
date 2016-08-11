cask 'qbserve' do
  version '1.43'
  sha256 'f04cb479557970f8679ce05db696fbf32776b33853d10a98522337efa90dac7a'

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast 'https://qotoqot.com/qbserve/app/appcast.xml',
          checkpoint: '13a175a170efbaeaa011088786d5dbf21a0c035610bbc37dd959677e385c5f26'
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
