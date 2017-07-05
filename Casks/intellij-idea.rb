cask 'intellij-idea' do
  version '2017.1.5,171.4694.70'
  sha256 '1207aa5cc666d526fc66bb8143b1087ebb557d86fe521ca450a2c4340bbca530'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release',
          checkpoint: 'a604c9ed76a0476b5733a3e32608eeace5b1d37e9b4018454b842df0b711a173'
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
