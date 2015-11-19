cask :v1 => 'intellij-idea' do
  version '15.0.1'
  sha256 'b253782bf1a10763c4fd84bffce0e28d855da8eb6499a91647860cb443695fdd'

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
