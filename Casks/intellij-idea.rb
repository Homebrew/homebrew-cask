cask 'intellij-idea' do
  version '2018.2.3,182.4323.46'
  sha256 '14a7fd3bd89e78fb905a2a70e69b3c04f487025872446ce33f54f93f167043c6'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.before_comma}.dmg"
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
