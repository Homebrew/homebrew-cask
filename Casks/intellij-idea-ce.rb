cask :v1 => 'intellij-idea-ce' do
  version '14.1.3'
  sha256 'e0e21b9ee9ac881c10b62507eaae4c2dc651bee631fbb9a0fbac9a289d405616'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA Community Edition'
  homepage 'https://www.jetbrains.com/idea/'
  license :apache

  app 'IntelliJ IDEA 14 CE.app'

  zap :delete => [
                  '~/Library/Application Support/IdeaIC14',
                  '~/Library/Preferences/IdeaIC14',
                  '~/Library/Caches/IdeaIC14',
                  '~/Library/Logs/IdeaIC14',
                 ]
end
