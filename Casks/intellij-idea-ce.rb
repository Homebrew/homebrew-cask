cask 'intellij-idea-ce' do
  version '2016.3.5'
  sha256 '9cfb98432a17fbc3c11b4dfe8f89b867bbe53fcd236d597d8ad2000a00b629d6'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release',
          checkpoint: '7f5a48628654dc2631e7cbcd9732392fe47c8ab457f48f4d42da528042530b41'
  name 'IntelliJ IDEA Community Edition'
  name 'IntelliJ IDEA CE'
  homepage 'https://www.jetbrains.com/idea/'

  auto_updates true

  app 'IntelliJ IDEA CE.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
                '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
                '~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState',
              ]
end
