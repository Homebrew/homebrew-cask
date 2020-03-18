cask 'duefocus' do
  version '2.3.2'
  sha256 '0621247db15b0be12dedcff19d5c98808b619984e58a09108c4e3a724148d22f'

  url "https://web.duefocus.com/distribution/darwin/v3/DueFocus-#{version}-mac.zip"
  appcast 'https://web.duefocus.com/distribution/darwin/v3/appcast.html'
  name 'DueFocus'
  homepage 'https://duefocus.com/'

  app 'DueFocus.app'

  zap trash: [
               '~/Library/Application Support/DueFocus',
               '~/Library/Preferences/com.qarea.duefocus.plist',
               '~/Library/Logs/DueFocus',
             ]
end
