cask 'mumu' do
  version '1.0.1'
  sha256 '6bc059e7d455056b68ba8b39635eec38758af7397fae65d0b9eeb24332a8addd'

  # paddle.s3.amazonaws.com/fulfillment_downloads/116824/597910/ was verified as official when first introduced to the cask
  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/116824/597910/3UjvmpBGSxuQuBAVlQm6_Mumu%20#{version}.dmg"
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
