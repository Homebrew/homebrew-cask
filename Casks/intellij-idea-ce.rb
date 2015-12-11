cask :v1 => 'intellij-idea-ce' do
  version '15.0.2'
  sha256 'f50d75277851db6e6a349149ea5d3a696f1232501a9b4a846ba68fed2284cc41'

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
