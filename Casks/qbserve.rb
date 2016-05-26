cask 'qbserve' do
  version '1.3'
  sha256 'f563e10f984d54f6a5b4454be36c80611101713c6e396d5cefb8d52cacf66bb4'

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast 'https://qotoqot.com/qbserve/app/appcast.xml',
          checkpoint: 'c14ff12a1abf66f3fec6fe19a86db03ce9e97cbc67bc8976bfe4b1d121145f47'
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
