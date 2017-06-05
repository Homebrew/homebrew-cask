cask 'detectx' do
  version '2.68'
  sha256 '2509e635bff872d146dee83dc27af5a359956ac57e04aaf159223edfccb8918c'

  # amazonaws.com/sqwarq.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/detectx.xml',
          checkpoint: 'f7cf0075bcd6aa396074f599270d929c250b2f27f4612c4be054ef95f71106c7'
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
