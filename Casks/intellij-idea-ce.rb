cask :v1 => 'intellij-idea-ce' do
  version '15.0.1'
  sha256 '70715153d78808493bd6f3da839b2f6872e4f94c423ca1f0d9fc848503a7e3ff'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}-custom-jdk-bundled.dmg"
  name 'IntelliJ IDEA Community Edition'
  homepage 'https://www.jetbrains.com/idea/'
  license :apache

  app 'IntelliJ IDEA 15 CE.app'

  zap :delete => [
                  '~/Library/Application Support/IdeaIC15',
                  '~/Library/Preferences/IdeaIC15',
                  '~/Library/Caches/IdeaIC15',
                  '~/Library/Logs/IdeaIC15',
                 ]
end
