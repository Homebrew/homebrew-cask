cask 'mumu' do
  version '1.1,tfwrCeU7TtCJ9wqdLHJ9'
  sha256 '4940f57e902303552a5e760e1621c00ae61544b90193febc4b9ee418d7cb221c'

  # paddle.s3.amazonaws.com/fulfillment_downloads/116824/597910/ was verified as official when first introduced to the cask
  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/116824/597910/#{version.after_comma}_Mumu%20#{version.before_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://vendors.paddle.com/download/product/597910'
  name 'Mumu'
  homepage 'https://getmumu.com/'

  depends_on macos: '>= :high_sierra'

  app 'Mumu.app'

  zap trash: [
               '~/Library/Application Support/Mumu',
               '~/Library/Application Support/com.wilbertliu.mumu',
               '~/Library/Caches/com.wilbertliu.mumu',
               '~/Library/Cookies/com.wilbertliu.mumu.binarycookies',
               '~/Library/Preferences/com.wilbertliu.mumu.plist',
             ]
end
