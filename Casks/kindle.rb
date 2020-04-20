cask 'kindle' do
  version '57029'
  sha256 'b4de86ba1b78966c754d220fe09fd7dbdbadd874b19e51d261d8308e6e0d4cb3'

  # kindleformac.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://kindleformac.s3.amazonaws.com/#{version}/KindleForMac-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.amazon.com/kindlemacdownload/ref=klp_hz_mac'
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
