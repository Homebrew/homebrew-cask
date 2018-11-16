cask 'qbserve' do
  version '1.79'
  sha256 'c589a3a23ab5929011e3a7357b28e4eab03a37a7e70a0fda8dfdbfbca0037e8c'

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
