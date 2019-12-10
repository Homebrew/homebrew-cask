cask 'haskell-for-mac' do
  version '1.7.0,1525.1572470003'
  sha256 'a8298a709d9fd9da700a4228377a2533cdbd8a4e7406ca84772b5e064649d72d'

  # dl.devmate.com/com.haskellformac.Haskell.basic was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.haskellformac.Haskell.basic/#{version.after_comma.major}/#{version.after_comma.minor}/Haskell%E2%80%94FunctionalProgrammingLab-#{version.after_comma.major}.zip"
  appcast 'https://updates.devmate.com/com.haskellformac.Haskell.basic.xml'
  name 'Haskell for Mac'
  homepage 'http://haskellformac.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Haskell.app'

  zap trash: [
               '~/Library/Application Scripts/com.haskellformac.Haskell.basic',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.haskellformac.haskell.basic.sfl*',
               '~/Library/Containers/com.haskellformac.Haskell.basic',
               '~/Library/Preferences/com.haskellformac.Haskell.basic.plist',
             ]
end
