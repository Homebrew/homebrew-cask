cask 'detectx' do
  version '2.34'
  sha256 'da6f12468ed6647d829e20f9f5a8c78f59f963c8344cc5410823cffb6970a34b'

  # amazonaws.com/sqwarq.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/detectx.xml',
          checkpoint: '197e9f3e72adb4f0224ede371dd5a78314b8f4316f65fc3a0cca7dd94bfc7731'
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
