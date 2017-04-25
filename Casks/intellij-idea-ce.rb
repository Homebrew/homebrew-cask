cask 'intellij-idea-ce' do
  version '2017.1.2,171.4249.39'
  sha256 '07fb5695f5a71593196b5f73c936c712fe66190d23b10fd099bc4259c6b39979'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release',
          checkpoint: '6a04b89f0aa4f8f85984d0431404b517856f8f0bcb827764af3c04d65a3eb155'
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
