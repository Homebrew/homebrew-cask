cask 'detectx' do
  version '2.74'
  sha256 'b67b09c79a5305c3ef6cf9f4ea1054c8ff9c5726b0c7096b5529299eb7bbd096'

  # amazonaws.com/sqwarq.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/detectx.xml',
          checkpoint: '91170fce8733f0dc8a1755e930f30a3f00d60872878a8c331704d26fbc5350e9'
  name 'DetectX'
  homepage 'https://sqwarq.com/detectx/'

  auto_updates true

  app 'DetectX.app'

  zap delete: [
                '~/Library/Application Support/com.sqwarq.DetectX',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sqwarq.detectx.sfl',
                '~/Library/Preferences/com.sqwarq.DetectX.plist',
              ]
end
