cask 'hyne' do
  version '1.9.1'
  sha256 'b71f9942a017b396a7f4e858ee1566ee50b0d7c1a9c560eecf723e161b9b0102'

  url "https://github.com/myst6re/hyne/releases/download/#{version}/Hyne-#{version}-macos.zip"
  appcast 'https://github.com/myst6re/hyne/releases.atom',
          checkpoint: '66554e3611412debaf31ec9bba874b96b57d635b78a6b1d61c561c4db7e5ca72'
  name 'Hyne'
  homepage 'https://github.com/myst6re/hyne'

  app 'Hyne.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vin047.hyne.sfl',
                '~/Library/Preferences/com.vin047.hyne.plist',
                '~/Library/Saved Application State/com.vin047.hyne.savedState',
              ]
end
