cask 'kindle' do
  version '56108'
  sha256 'd35f0e8f712e29d6d2331e4ca54465a38732ae678596556d972989712b5fb477'

  # kindleformac.s3.amazonaws.com was verified as official when first introduced to the cask
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
