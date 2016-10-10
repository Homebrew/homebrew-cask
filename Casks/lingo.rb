cask 'lingo' do
  version :latest
  sha256 :no_check

  # nounproject.s3.amazonaws.com/lingo was verified as official when first introduced to the cask
  url 'https://nounproject.s3.amazonaws.com/lingo/Lingo.dmg'
  name 'Lingo'
  homepage 'https://lingoapp.com'

  app 'Lingo.app'

  zap delete: [
                '~/Library/Preferences/com.lingoapp.Lingo.plist',
                '~/Library/Application Support/com.lingoapp.Lingo',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lingoapp.lingo.sfl',
              ]
end
