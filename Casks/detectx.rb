cask 'detectx' do
  version '2.75'
  sha256 '3d621815eeafefc829ebe125b73e980d2917a7138ad4e203cbe894fea8d3a7cb'

  # amazonaws.com/sqwarq.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/detectx.xml',
          checkpoint: 'b5606d76b7e5cc6e6a37b21d5d3396ae09bfd6893d1056c94c78086e07e202fd'
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
