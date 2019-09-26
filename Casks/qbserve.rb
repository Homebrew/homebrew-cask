cask 'qbserve' do
  version '1.85'
  sha256 '8125b32c2e93dc8be0d55da9b9c11a84d957314d296a2b21120e053ff610c96a'

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
