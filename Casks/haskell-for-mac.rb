cask 'haskell-for-mac' do
  version '1.6.1,1482.1545510880'
  sha256 'be546ebae7df2492b7c8a203916ff74c92367b24d4ec00f75d89134b8f71e14f'

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
