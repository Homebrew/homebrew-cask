cask 'intellij-idea' do
  version '15.0.2'
  sha256 'b1c30d9416f46045856573709035e4ab2abf472284d2fd010b40387f91286812'

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
