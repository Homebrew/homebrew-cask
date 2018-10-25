cask 'hyne' do
  version '1.9.3a'
  sha256 '5cfaedb6f569eae6bfcc8b4c52ba09b24ddc3474f7c1e2b7222c4370ecdfe934'

  url "https://github.com/myst6re/hyne/releases/download/#{version}/hyne-#{version.sub(%r{[a-z]}, '')}-osx64.tar.gz"
  appcast 'https://github.com/myst6re/hyne/releases.atom'
  name 'Hyne'
  homepage 'https://github.com/myst6re/hyne'

  app "hyne-#{version}-osx64/Hyne.app"

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vin047.hyne.sfl*',
               '~/Library/Preferences/com.vin047.hyne.plist',
               '~/Library/Saved Application State/com.vin047.hyne.savedState',
             ]
end
