cask 'qbserve' do
  version '1.73'
  sha256 'bf804de6403e8803ae8e75a3cd3529a663920e609c5336980c3253d59be7eaf8'

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast 'https://qotoqot.com/qbserve/app/appcast.xml',
          checkpoint: 'afafa62d4e4bc9f1c2cf26b1f574b52002c964cd1399bf0db0c99b434bd6deca'
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
