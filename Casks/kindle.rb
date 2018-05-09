cask 'kindle' do
  version '50131'
  sha256 'cc58e6fef6a30e98d78349016a9828009a1d7cd7d0d9f6bc88e74db43edbf7b6'

  # s3.amazonaws.com/kindleformac was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/kindleformac/#{version}/KindleForMac-#{version}.dmg"
  name 'Kindle for Mac'
  homepage 'https://www.amazon.com/gp/digital/fiona/kcp-landing-page'

  app 'Kindle.app'

  zap trash: [
               '~/Library/Preferences/com.amazon.Kindle.plist',
               '~/Library/Application Support/Kindle/',
               '~/Library/Saved Application State/com.amazon.Kindle.savedState/',
               '~/Library/Caches/com.amazon.Kindle-Crash-Reporter/',
             ]
end
