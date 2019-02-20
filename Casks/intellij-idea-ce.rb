cask 'intellij-idea-ce' do
  version '2018.3.4,183.5429.30'
  sha256 '87c781160d9560d9d2a29ba82c861591639aa265105fffe309554c2753233808'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release'
  name 'IntelliJ IDEA Community Edition'
  name 'IntelliJ IDEA CE'
  homepage 'https://www.jetbrains.com/idea/'

  auto_updates true

  app 'IntelliJ IDEA CE.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'idea') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/IdeaIC#{version.major_minor}",
               "~/Library/Caches/IdeaIC#{version.major_minor}",
               "~/Library/Logs/IdeaIC#{version.major_minor}",
               "~/Library/Preferences/IdeaIC#{version.major_minor}",
               '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
               '~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState',
             ]
end
