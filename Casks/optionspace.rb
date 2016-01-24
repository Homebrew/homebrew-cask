cask 'optionspace' do
  version '1.0.3'
  sha256 '826d2ec636044c466d49dd0aa72b8a3a9cc674aea9988d7c0eb3b91274c9800f'

  url "https://optionspace.co/download/OptionSpace_v#{version}.dmg"
  appcast 'https://optionspace.co/app/appcast.xml',
          checkpoint: '858fff1f446633e2143699f290e0f267ab3b2414ec319f101ba3bb9cac8f7d63'
  name 'OptionSpace'
  homepage 'https://optionspace.co'
  license :freemium

  app 'OptionSpace.app'

  zap delete: [
                '~/Library/Application Support/OptionSpace',
                '~/Library/Preferences/org.sparkle-project.Sparkle.Autoupdate.plist',
                '~/Library/Preferences/MeAndUser.OptionSpace.plist',
              ]
end
