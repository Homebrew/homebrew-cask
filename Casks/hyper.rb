cask 'hyper' do
  version '2.0.0'
  sha256 'b6318c7b81b6555d48ba02008a29ff7d83044ff3a55f3b49b46b4892cabb4d92'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom'
  name 'Hyper'
  homepage 'https://hyper.is/'

  auto_updates true

  app 'Hyper.app'
  binary "#{appdir}/Hyper.app/Contents/Resources/bin/hyper"

  zap trash: [
               '~/.hyper.js',
               '~/.hyper_plugins',
               '~/Library/Application Support/Hyper',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl*',
               '~/Library/Caches/co.zeit.hyper',
               '~/Library/Caches/co.zeit.hyper.ShipIt',
               '~/Library/Preferences/co.zeit.hyper.plist',
               '~/Library/Preferences/co.zeit.hyper.helper.plist',
               '~/Library/Saved Application State/co.zeit.hyper.savedState',
             ]
end
