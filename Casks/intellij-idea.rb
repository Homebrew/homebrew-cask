cask 'intellij-idea' do
  version '2016.1'
  sha256 '551f9696facb94bf3b593bfdb8ba59423acd7df9241b3b8e8cf93db75098196c'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA'
  homepage 'https://www.jetbrains.com/idea/'
  license :commercial

  app 'IntelliJ IDEA.app'

  zap delete: [
                "~/.IntelliJIdea#{version.major}",
                "~/Library/Caches/IntelliJIdea#{version.major}",
                "~/Library/Logs/IntelliJIdea#{version.major}",
                "~/Library/Application Support/IntelliJIdea#{version.major}",
                "~/Library/Preferences/IntelliJIdea#{version.major}",
                '~/Library/Preferences/com.jetbrains.intellij.plist',
              ]
end
