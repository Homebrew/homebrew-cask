cask 'qbserve' do
  version '1.57'
  sha256 '7cf175f7e4a1c3815b7f10a994b76ae37f830ec9ad528be055ef59c47476b876'

  url "https://qotoqot.com/qbserve/app/Qbserve-#{version}.zip"
  appcast 'https://qotoqot.com/qbserve/app/appcast.xml',
          checkpoint: 'ac405655c03b56d76e4a29a2f5c04de709c21925421a920da06cb5b118c910eb'
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
