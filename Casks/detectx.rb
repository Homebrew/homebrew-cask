cask 'detectx' do
  version '2.87'
  sha256 'a81e7dc99176552f45cdda3ff1ae077bb6ffc46319930f1179b3ee29f94b7255'

  # amazonaws.com/sqwarq.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/detectx.xml'
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
