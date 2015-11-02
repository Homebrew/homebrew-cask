cask :v1 => 'intellij-idea' do
  version '15.0'
  sha256 'a195493e2c4a1b55f76d9784ef2d8815bffb46d6b4a1b11a8000489a011097b6'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}-custom-jdk-bundled.dmg"
  name 'IntelliJ IDEA'
  homepage 'https://www.jetbrains.com/idea/'
  license :commercial

  app 'IntelliJ IDEA 15.app'

  zap :delete => [
                  '~/Library/Application Support/IntelliJIdea15',
                  '~/Library/Preferences/IntelliJIdea15',
                  '~/Library/Preferences/com.jetbrains.intellij.plist',
                 ]
end
