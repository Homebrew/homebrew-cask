cask :v1 => 'intellij-idea-ce' do
  version '14.1.5'
  sha256 '595448c3c85e83587f9059403bad155b97477780c11843763b4646b59592f000'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
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
