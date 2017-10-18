cask 'intellij-idea' do
  version '2017.2.5,172.4343.14'
  sha256 '0f5bd681fb6c36490ebabc5f9effbfbe1ec8d28cfdb6bc4247858144bd067a8d'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release',
          checkpoint: '34c38d07f0585edc7924f8005a02445c4f5ce2c7014a2a77ec31b1b67c5cc55a'
  name 'IntelliJ IDEA Ultimate'
  homepage 'https://www.jetbrains.com/idea/'

  auto_updates true

  app 'IntelliJ IDEA.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'idea') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                '~/Library/Saved Application State/com.jetbrains.intellij.savedState',
              ],
      trash:  [
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
                '~/Library/Preferences/com.jetbrains.intellij.plist',
              ]
end
