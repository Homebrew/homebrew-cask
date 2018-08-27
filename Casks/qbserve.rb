cask 'qbserve' do
  version '1.76'
  sha256 '12221fdbc48e77c5e58ec79cf51daaef76b55369829088315c98de87c53837c9'

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast 'https://qotoqot.com/qbserve/app/appcast.xml'
  name 'Qbserve'
  homepage 'https://qotoqot.com/qbserve/'

  accessibility_access true
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
