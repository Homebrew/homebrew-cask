cask 'qbserve' do
  version '1.59'
  sha256 'c2085936d3855e3484913a449986eb3dfe7ed3db7d1affb5bb08ff1cb053b673'

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast 'https://qotoqot.com/qbserve/app/appcast.xml',
          checkpoint: '59685894af371a9e3b7c930bd3898c928dbf0c5dfbbd184940a73569a285722c'
  name 'Qbserve'
  homepage 'https://qotoqot.com/qbserve/'

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
