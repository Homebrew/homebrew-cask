cask 'intellij-idea-ce' do
  version '2018.1.6,181.5540.7'
  sha256 '94dfda6ffd40ed97347d1f134f08329b7fef360a7f33f7168f6a68e8a55d2538'

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
