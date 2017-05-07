cask 'qbserve' do
  version '1.62'
  sha256 '3f26c66ff9d3cbf03510901d53b4397f94e40981d638dac1d76c8a90af1de2f4'

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast 'https://qotoqot.com/qbserve/app/appcast.xml',
          checkpoint: 'de5e3f76a9e553ad196a113cfd37185b37fed39fcf7fcc893295d2911965dc44'
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
