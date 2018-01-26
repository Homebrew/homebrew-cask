cask 'gitmoji' do
  version '1.0.1'
  sha256 '7961f9be82688c98cc62d0df70b59251d94848c9b6669a6a39d6ae4fc7ad10d1'

  url "https://github.com/Meadowcottage/gitmoji/releases/download/#{version}/Gitmoji-#{version}.dmg"
  appcast 'https://github.com/Meadowcottage/gitmoji/releases.atom',
          checkpoint: '61237d048c9f1a59aa553afd7d9b633b9efe9af17be1bdea8f9242c3248cc0f7'
  name 'gitmoji'
  homepage 'https://github.com/Meadowcottage/gitmoji'

  app 'gitmoji.app'

  zap trash: [
               '~/Library/Application Support/gitmoji',
               '~/Library/Preferences/com.Meadowcottage.Gitmoji.helper.plist',
               '~/Library/Preferences/com.Meadowcottage.Gitmoji.plist',
               '~/Library/Saved Application State/com.Meadowcottage.Gitmoji.savedState',
             ]
end
