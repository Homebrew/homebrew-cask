cask 'intellij-idea-ce' do
  version '2017.2.2,172.3757.52'
  sha256 '4ec5b5440c7ba9fb5fb19c227457314dd8a7c8b238ac9bc452a9a8c83b993740'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release',
          checkpoint: '5c2708369a51548b1f5635846b43c8e393ea832a6f68db596879ee97f7609925'
  name 'IntelliJ IDEA Community Edition'
  name 'IntelliJ IDEA CE'
  homepage 'https://www.jetbrains.com/idea/'

  auto_updates true

  app 'IntelliJ IDEA CE.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'idea') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
                '~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState',
              ],
      trash:  [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
              ]
end
