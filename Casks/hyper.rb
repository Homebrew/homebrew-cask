cask 'hyper' do
  version '1.4.7'
  sha256 '49f530ca76ece244e0c03b905ca6855d58ad962a717bf15d2f8c8766449e1b92'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: '37ad97df5744c71ad69cdf3feace8038daa5ff7ed747b589f9c59def429fe587'
  name 'Hyper'
  homepage 'https://hyper.is/'

  app 'Hyper.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl',
                '~/Library/Caches/co.zeit.hyper',
                '~/Library/Caches/co.zeit.hyper.ShipIt',
                '~/Library/Saved Application State/co.zeit.hyper.savedState',
              ],
      trash:  [
                '~/.hyper.js',
                '~/.hyper_plugins',
                '~/Library/Application Support/Hyper',
                '~/Library/Preferences/co.zeit.hyper.plist',
                '~/Library/Preferences/co.zeit.hyper.helper.plist',
              ]
end
