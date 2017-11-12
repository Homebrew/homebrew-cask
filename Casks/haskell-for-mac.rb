cask 'haskell-for-mac' do
  version '1.5.1,1358.1503125985'
  sha256 '1b95fe3037a518ed560272863b0354f93ffc6b1224ebf1e20b62e0b615e114d0'

  # dl.devmate.com/com.haskellformac.Haskell.basic was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.haskellformac.Haskell.basic/#{version.after_comma.dots_to_slashes}/Haskell%E2%80%94FunctionalProgrammingLab-#{version.after_comma.major}.zip"
  appcast 'https://updates.devmate.com/com.haskellformac.Haskell.basic.xml',
          checkpoint: '76bb48d60bd694259114d616bd0b20312804209891cec3efedebf24e03b7293a'
  name 'Haskell for Mac'
  homepage 'http://haskellformac.com/'

  auto_updates true

  app 'Haskell.app'

  zap delete: [
                '~/Library/Application Scripts/com.haskellformac.Haskell.basic',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.haskellformac.haskell.basic.sfl*',
                '~/Library/Containers/com.haskellformac.Haskell.basic',
                '~/Library/Preferences/com.haskellformac.Haskell.basic.plist',
              ]
end
