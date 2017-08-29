cask 'intellij-idea-ce' do
  version '2017.2.3,172.3968.16'
  sha256 'ee6ff20416bbe898210d046d569be6ca4ffef5e2a3b0a19e9758547295943a75'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release',
          checkpoint: 'fca7b4d8f7211b875e82d0be8c1ad2e5db85649435ecea562ebbcaf170384d8e'
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
