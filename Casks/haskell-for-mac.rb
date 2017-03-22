cask 'haskell-for-mac' do
  version '1.4.0,1286.1490060445'
  sha256 'de90e6effa54f0941f135252565a851de17eaefcdf00bdb2a5ca38e1d2135214'

  # dl.devmate.com/com.haskellformac.Haskell.basic was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.haskellformac.Haskell.basic/#{version.after_comma.dots_to_slashes}/Haskell%E2%80%94FunctionalProgrammingLab-#{version.after_comma.major}.zip"
  appcast 'https://updates.devmate.com/com.haskellformac.Haskell.basic.xml',
          checkpoint: '51841c041b2cfe2a0950e820c972865ed0a9c97f502d46437581f1b8fc5c7312'
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
