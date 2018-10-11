cask 'balance-lock' do
  version '1.0.5'
  sha256 '36fe26015b4d9e60c9eb11757bf2d28e40e6ac8c013912894f70e32a79c5d5bc'

  url "https://www.tunabellysoftware.com/resources/Balance_Lock_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/balancelock.xml'
  name 'Balance Lock'
  homepage 'https://www.tunabellysoftware.com/balance_lock'

  app 'Balance Lock.app'

  zap trash: [
               '~/Library/Application Support/Balance Lock',
               '~/Library/Preferences/com.tunabelly.balancelock.plist',
             ]
end
