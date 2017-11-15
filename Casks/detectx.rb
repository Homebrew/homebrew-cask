cask 'detectx' do
  version '2.80'
  sha256 'ccd30c46109184fd9fa7da2b71b90aff4c1143a553ddc22ec32f11af8ca80a0c'

  # amazonaws.com/sqwarq.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/detectx.xml',
          checkpoint: '4fe1450a9a854ce6f8d515c8ee4dd5d2875b452f8f57393d1566ade09ff4ab56'
  name 'DetectX'
  homepage 'https://sqwarq.com/detectx/'

  auto_updates true

  app 'DetectX.app'

  zap delete: [
                '~/Library/Application Support/com.sqwarq.DetectX',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sqwarq.detectx.sfl*',
                '~/Library/Preferences/com.sqwarq.DetectX.plist',
              ]
end
