cask 'haskell-for-mac' do
  version '1.7.0,1525.1572701098'
  sha256 'f8e64a7a0706b5918b454c35ff8c128578aefacb3c6da3a7a1e3dd8258342246'

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
