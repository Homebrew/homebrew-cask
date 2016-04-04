cask 'hyne' do
  version '1.9.1'
  sha256 'b71f9942a017b396a7f4e858ee1566ee50b0d7c1a9c560eecf723e161b9b0102'

  url "https://github.com/myst6re/hyne/releases/download/#{version}/Hyne-#{version}-macos.zip"
  name 'Hyne'
  homepage 'https://github.com/myst6re/hyne'
  license :oss

  app 'Hyne.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vin047.hyne.sfl',
                '~/Library/Preferences/com.vin047.hyne.plist',
                '~/Library/Saved Application State/com.vin047.hyne.savedState',
              ]
end
