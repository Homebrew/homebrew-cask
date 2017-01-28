cask 'intellij-idea-ce' do
  version '2016.3.2'
  sha256 '9f60b27d78b15cd50abf73df48c15f1523f441f59307341281eacf21f53a8460'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA CE'
  homepage 'https://www.jetbrains.com/idea/'

  auto_updates true

  app 'IntelliJ IDEA CE.app'

  zap delete: [
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
                '~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState',
              ]
end
