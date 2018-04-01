cask 'detectx' do
  version '2.84'
  sha256 '26ef77d361b0edbbc0644f42c118eb7c3015110469378bd1a2ee45458a4b8acd'

  # amazonaws.com/sqwarq.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/detectx.xml',
          checkpoint: 'bd2bcf168526477b250131c49e36974512505ad457bd9c47455801d2a9620ce9'
  name 'DetectX'
  homepage 'https://sqwarq.com/detectx/'

  auto_updates true

  app 'DetectX.app'

  zap trash: [
               '~/Library/Application Support/com.sqwarq.DetectX',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sqwarq.detectx.sfl*',
               '~/Library/Preferences/com.sqwarq.DetectX.plist',
             ]
end
