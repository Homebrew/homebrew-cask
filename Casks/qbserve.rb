cask 'qbserve' do
  version '1.82'
  sha256 '008d36a9af1fdad68d1a4c8e4a7fcc5d71a936d5cee08c81e88c5284a3af89f5'

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast 'https://qotoqot.com/qbserve/app/appcast.xml'
  name 'Qbserve'
  homepage 'https://qotoqot.com/qbserve/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Qbserve.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qotoqot.qbserve.sfl*',
               '~/Library/Application Support/Qbserve',
               '~/Library/Caches/com.QotoQot.Qbserve',
               '~/Library/Containers/com.QotoQot.QbserveLogin',
               '~/Library/Preferences/com.qotoqot.qbserve.plist',
             ]
end
