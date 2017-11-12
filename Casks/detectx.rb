cask 'detectx' do
  version '2.78'
  sha256 '45a7c3cc1df565940848d6428c7a05a4b3ff6b2806e70c86bbbaba148eb45911'

  # amazonaws.com/sqwarq.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/detectx.xml',
          checkpoint: '5d8ebe26d585164be4eb897feed84659dac70862804078975ca86a80e4fafd8a'
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
