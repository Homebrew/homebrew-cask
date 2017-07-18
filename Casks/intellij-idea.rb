cask 'intellij-idea' do
  version '2017.2,172.3317.76'
  sha256 'ed5779654c93b584acbcaa8102879a9d8294287101989cd7f2ad8db4fdc4a9ad'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release',
          checkpoint: 'e43b8c9fbc2566096c1a8f52c678ebf1a03983a966b125870cb0d129a64a5f60'
  name 'IntelliJ IDEA Ultimate'
  homepage 'https://www.jetbrains.com/idea/'

  auto_updates true

  app 'IntelliJ IDEA.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'idea') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
                '~/Library/Preferences/com.jetbrains.intellij.plist',
                '~/Library/Saved Application State/com.jetbrains.intellij.savedState',
              ]
end
