cask 'hex-fiend' do
  version '2.11.0'
  sha256 'f775a92d79fc5dd39ebe898b1ac8d7d36cde034f96c903caf5ea782e2d402288'

  # github.com/ridiculousfish/HexFiend was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version}.dmg"
  appcast 'https://github.com/ridiculousfish/HexFiend/releases.atom'
  name 'Hex Fiend'
  homepage 'https://ridiculousfish.com/hexfiend/'

  auto_updates true
  conflicts_with cask: 'hex-fiend-beta'

  app 'Hex Fiend.app'
  binary 'Hex Fiend.app/Contents/Resources/hexf'

  zap trash: [
               '~/Library/Caches/com.ridiculousfish.HexFiend',
               '~/Library/Preferences/com.ridiculousfish.HexFiend.plist',
               '~/Library/Saved Application State/com.ridiculousfish.HexFiend.savedState',
             ]
end
