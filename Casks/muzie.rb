cask 'muzie' do
  version '1.3.0'
  sha256 'd203ccc7251110ade0bf4314b1f1e5a750da57e80abcb71c4cf6bd6f61fc86df'

  # s3.amazonaws.com/muzie-release was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/muzie-release/Muzie-#{version}.dmg"
  appcast 'https://muzie.netlify.com/'
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
