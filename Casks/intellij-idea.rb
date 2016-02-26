cask 'intellij-idea' do
  version '15.0.4'
  sha256 'fddfa3edcf966daee1b8e9b1ac0cd22c2ffc8bcea429342a599e31d411b773de'

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
