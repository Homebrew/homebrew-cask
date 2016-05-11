cask 'intellij-idea' do
  version '2016.1.2'
  sha256 '8e104524832891e9eb8c567a404f63038caa1f73e403811440e95f8b63164ecf'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA'
  homepage 'https://www.jetbrains.com/idea/'
  license :commercial

  app 'IntelliJ IDEA.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/.IntelliJIdea#{version.major_minor}",
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.intellij.*.plist',
              ]
end
