cask 'cheatsheet' do
  version '1.2.7'
  sha256 'cfe0c699e04ea116965d13be02eee8358d5acd89c32144c388d0e28ee693fbd3'

  # mediaatelier.com/CheatSheet was verified as official when first introduced to the cask
  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  appcast 'https://mediaatelier.com/CheatSheet/feed.php',
          checkpoint: '59fa86defe758b8e0d85572f5a67e72cf559a8be0f0b912e4f4510dc50f85c0e'
  name 'CheatSheet'
  homepage 'https://www.cheatsheetapp.com/CheatSheet/'

  app 'CheatSheet.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/com.mediaatelier.CheatSheet',
                '~/Library/Preferences/com.mediaatelier.CheatSheet.plist',
              ]
end
