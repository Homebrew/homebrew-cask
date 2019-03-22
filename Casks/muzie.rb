cask 'muzie' do
  version '1.4.0'
  sha256 '727aa99af123e9459646515455f85bf25ede0641098850fe32a72b23adb6a708'

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
