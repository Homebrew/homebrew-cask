cask 'intellij-idea-ce' do
  version '2017.1.1,171.4073.28'
  sha256 '3dc8e4aea90becd2286db1a9a7b831420e52047985f41d7a330c3f893d622257'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release',
          checkpoint: '005a2a9227d56743b14b9611a9f916bf5429067f6eaac02255aec7082fd6b360'
  name 'IntelliJ IDEA Community Edition'
  name 'IntelliJ IDEA CE'
  homepage 'https://www.jetbrains.com/idea/'

  auto_updates true

  app 'IntelliJ IDEA CE.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'idea') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
                '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
                '~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState',
              ]
end
