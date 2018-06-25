cask 'detectx' do
  version '2.86'
  sha256 'f93f062f069968e2423c18a5ea45bb6a4c74f3b652a5b66170696446b716db16'

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
