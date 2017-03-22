cask 'intellij-idea' do
  version '2017.1'
  sha256 'f37b3b63276d9e0cc9784506ea3257cbf6b843095546f5afef07e08a04dc74c0'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release',
          checkpoint: '82be45bb011f2a5160743ff33da22611d616aac156305db42e34c7fdd774d7f2'
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
