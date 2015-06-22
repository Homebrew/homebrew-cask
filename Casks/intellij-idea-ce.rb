cask :v1 => 'intellij-idea-ce' do
  version '14.1.4'
  sha256 '67c3cf1e6b72ffddb1b8573ddcb407ab3b476a75dbd8e866adbf264bb2daeeb6'

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
