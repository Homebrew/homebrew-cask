cask 'detectx' do
  version '2.88'
  sha256 'efc1824032f2db6666a294635c198bff37ccef6c8c81eaf43155da5f0f3ef7e8'

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
