cask 'detectx' do
  version '2.60'
  sha256 '6d8dfcb67ede9ec83d71aedd1904c2b7bcf44a5208d78c5723d91c26bdbe3db6'

  # amazonaws.com/sqwarq.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/detectx.xml',
          checkpoint: '325c94bb3f6bd49c85b596c5f2efe03c141047b8da94e774c84b372c115c5d85'
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
