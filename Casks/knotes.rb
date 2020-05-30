cask 'knotes' do
  version '2.5.0'
  sha256 '0f5d0da7eb1e1460da300931d4eabe06e3506b5e813ae408782717f9760a8ee6'

  # knotes2.s3-ap-northeast-1.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://knotes2.s3-ap-northeast-1.amazonaws.com/download/mac/Knotes-#{version}.dmg"
  appcast 'https://knotesapp.com/'
  name 'Knotes'
  homepage 'https://knotesapp.com/'

  app 'Knotes.app'

  zap trash: [
               '~/Library/Application Support/knotes',
               '~/Library/Logs/knotes',
               '~/Library/Preferences/com.knotesapp.knotes.helper.plist',
               '~/Library/Preferences/com.knotesapp.knotes.plist',
               '~/Library/Saved Application State/com.knotesapp.knotes.savedState',
             ]
end
