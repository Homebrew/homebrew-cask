cask 'muzie' do
  version '1.5.1'
  sha256 '15dfcd74e39d03698ff0a92d94f2053aa83bcf5a88c9afc1dd75c98e8e24befb'

  # muzie-release.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://muzie-release.s3.amazonaws.com/Muzie-#{version}.dmg"
  appcast 'https://release.muzie.app/latest-mac.yml'
  name 'Muzie'
  homepage 'https://muzie.netlify.com/'

  app 'Muzie.app'

  zap trash: [
               '~/Library/Application Support/Muzie',
               '~/Library/Logs/Muzie',
               '~/Library/Preferences/com.gaafar.Muzie.plist',
               '~/Library/Saved Application State/com.gaafar.Muzie.savedState',
             ]
end
