cask 'kindle' do
  version '52077'
  sha256 'a069cd4cb4eee382ca7122b1652577b727851d244ffe75e60db08255b75f482b'

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
