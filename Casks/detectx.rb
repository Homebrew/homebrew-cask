cask 'detectx' do
  version '2.33'
  sha256 'f1eb4e924684e203f2c041bf9b833071aa924cdd5cc86db83e3f85179734e1a4'

  # amazonaws.com/sqwarq.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/detectx.xml',
          checkpoint: 'b3758adbf87b0d28752ea211dc5fbcaea194a7c5999a778d72bca4c2b4a6220b'
  name 'DetectX'
  homepage 'https://sqwarq.com/detectx/'
  license :commercial

  auto_updates true

  app 'DetectX.app'

  zap delete: [
                '~/Library/Application Support/com.sqwarq.DetectX',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sqwarq.detectx.sfl',
                '~/Library/Preferences/com.sqwarq.DetectX.plist',
              ]
end
