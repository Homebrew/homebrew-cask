cask 'haskell-for-mac' do
  version '1.5.0,1335.1499064501'
  sha256 '9105671f870a12928aafbdcc3533b846946266991c945bcfc649eb589b012185'

  # dl.devmate.com/com.haskellformac.Haskell.basic was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.haskellformac.Haskell.basic/#{version.after_comma.dots_to_slashes}/Haskell%E2%80%94FunctionalProgrammingLab-#{version.after_comma.major}.zip"
  appcast 'https://updates.devmate.com/com.haskellformac.Haskell.basic.xml',
          checkpoint: '7ef96fe31bcc10a8a71f586edb518a4c15e1a8c1330aab4ecd8fba21c0d6ecc3'
  name 'Haskell for Mac'
  homepage 'http://haskellformac.com/'

  auto_updates true

  app 'Haskell.app'

  zap delete: [
                '~/Library/Application Scripts/com.haskellformac.Haskell.basic',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.haskellformac.haskell.basic.sfl',
                '~/Library/Containers/com.haskellformac.Haskell.basic',
                '~/Library/Preferences/com.haskellformac.Haskell.basic.plist',
              ]
end
