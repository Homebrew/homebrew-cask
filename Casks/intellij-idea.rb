cask 'intellij-idea' do
  version '2016.3.5'
  sha256 '4417df3aa9fba7c75af371b51d734759b2d555930404b2063866b4e869ae3b79'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release',
          checkpoint: 'a725581302012d1dba4f2f26834e14992d21db3f725ce3f4933f7d1b9d10852c'
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
