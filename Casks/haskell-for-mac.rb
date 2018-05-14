cask 'haskell-for-mac' do
  version '1.6.0,1473.1526101439'
  sha256 'f54aff2658de791ba299b84fecb6934cca75eb2af4d2bb29124c91d1c591a493'

  # dl.devmate.com/com.haskellformac.Haskell.basic was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.haskellformac.Haskell.basic/#{version.after_comma.dots_to_slashes}/Haskell%E2%80%94FunctionalProgrammingLab-#{version.after_comma.major}.zip"
  appcast 'https://updates.devmate.com/com.haskellformac.Haskell.basic.xml',
          checkpoint: '0ea33731abd1d8f6f02363c59f00e62d70fe19d281fe72a0b0db71c680c952bd'
  name 'Haskell for Mac'
  homepage 'http://haskellformac.com/'

  auto_updates true

  app 'Haskell.app'

  zap trash: [
               '~/Library/Application Scripts/com.haskellformac.Haskell.basic',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.haskellformac.haskell.basic.sfl*',
               '~/Library/Containers/com.haskellformac.Haskell.basic',
               '~/Library/Preferences/com.haskellformac.Haskell.basic.plist',
             ]
end
