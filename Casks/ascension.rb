cask 'ascension' do
  version '3.0.0'
  sha256 'b21598b455878b997a08c88ef1c800eef2ad648ca672228db90ece0754d5e492'

  url "https://github.com/ansilove/Ascension/releases/download/v#{version}/Ascension_v#{version}.zip"
  appcast 'https://github.com/ansilove/Ascension/releases.atom',
          checkpoint: '1f169b668cf5d5664635b52f7d3c20767e8760594fee6bf4d6b7d72dc937faff'
  name 'Ascension'
  homepage 'https://github.com/ansilove/Ascension'

  app 'Ascension.app'

  zap trash: [
               '~/Library/Application Support/Ascension',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.byteproject.ascension.sfl*',
               '~/Library/Preferences/com.byteproject.Ascension.plist',
               '~/Library/Saved Application State/com.byteproject.Ascension.savedState',
             ]
end
