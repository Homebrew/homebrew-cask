cask 'duefocus' do
  version '1.1.9'
  sha256 'd0e5238abf2053b4f372bf0242dc34830865d297ca81abc371cdf2bc123864d5'

  url "https://web.duefocus.com/distribution/darwin/v2/DueFocus-#{version}-mac.zip"
  name 'DueFocus'
  homepage 'https://duefocus.com/'

  app 'DueFocus.app'

  zap trash: [
               '~/Library/Application Support/DueFocus',
               '~/Library/Preferences/com.qarea.duefocus.plist',
               '~/Library/Logs/DueFocus',
             ]
end
