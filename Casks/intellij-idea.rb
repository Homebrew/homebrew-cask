cask 'intellij-idea' do
  version '2017.1'
  sha256 '3a31fa83613e7c7e8d0fc4aee35bdb76aebc698c7b3ce9ffbd1e3c0db97d29e8'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release',
          checkpoint: 'ea8dc16df7abcce54cc4e57d3c4cbdd396cc06e03265233a67fd5496e31666e5'
  name 'IntelliJ IDEA Ultimate'
  homepage 'https://www.jetbrains.com/idea/'

  auto_updates true

  app 'IntelliJ IDEA.app'

  zap delete: [
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
                '~/Library/Preferences/com.jetbrains.intellij.plist',
                '~/Library/Saved Application State/com.jetbrains.intellij.savedState',
              ]
end
