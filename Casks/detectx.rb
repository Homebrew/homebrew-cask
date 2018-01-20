cask 'detectx' do
  version '2.83'
  sha256 '4870b28ed262c145736a18a7e63e062b934e7771f403ca1eed4dc742b1120127'

  # amazonaws.com/sqwarq.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/detectx.xml',
          checkpoint: 'e83d8866b56bfe428bf8b81e2e9261ff89f5a48a18d3080ba09a2f27bb27af09'
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
