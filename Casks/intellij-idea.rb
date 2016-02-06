cask 'intellij-idea' do
  version '15.0.3'
  sha256 '22f8d63d9c332bc3f60c1316da3a0c70218b2508619713cb7268ff7286baf92b'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}-custom-jdk-bundled.dmg"
  name 'IntelliJ IDEA'
  homepage 'https://www.jetbrains.com/idea/'
  license :commercial

  app 'IntelliJ IDEA 15.app'

  zap delete: [
                "~/.IntelliJIdea#{version.major}",
                "~/Library/Caches/IntelliJIdea#{version.major}",
                "~/Library/Logs/IntelliJIdea#{version.major}",
                "~/Library/Application Support/IntelliJIdea#{version.major}",
                "~/Library/Preferences/IntelliJIdea#{version.major}",
                '~/Library/Preferences/com.jetbrains.intellij.plist',
              ]
end
