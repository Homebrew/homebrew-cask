cask 'intellij-idea' do
  version '2020.1.3'
  sha256 'ae96f22aad30b2d2b73ffbfb907bc2f4b70d479cea48faff9c4afec2afb8da73'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release'
  name 'IntelliJ IDEA Ultimate'
  homepage 'https://www.jetbrains.com/idea/'

  auto_updates true

  app 'IntelliJ IDEA.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'idea') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               '~/Library/Preferences/com.jetbrains.intellij.plist',
               "~/Library/Caches/IntelliJIdea#{version.major_minor}",
               "~/Library/Logs/IntelliJIdea#{version.major_minor}",
               "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
               "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
               '~/Library/Saved Application State/com.jetbrains.intellij.savedState',
             ]
end
