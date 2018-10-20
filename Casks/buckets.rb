cask 'buckets' do
  version '0.51.1'
  sha256 'a17e0f3651680284e3dc7075de92118c63e7ef9dddb3622deaaa2ab35f6d68ef'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/buckets/application/releases/download/v#{version}/Buckets-#{version}.dmg"
  appcast 'https://github.com/buckets/application/releases.atom'
  name 'Buckets'
  homepage 'https://www.budgetwithbuckets.com/'

  app 'Buckets.app'

  zap trash: [
               '~/Library/Application Support/Buckets',
               '~/Library/Logs/Buckets',
               '~/Library/Preferences/com.github.buckets.application.helper.plist',
               '~/Library/Preferences/com.github.buckets.application.plist',
               '~/Library/Saved Application State/com.github.buckets.application.savedState',
             ]
end
