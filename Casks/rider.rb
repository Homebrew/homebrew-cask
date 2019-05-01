cask 'rider' do
  version '2019.1,191.6733.943'
  sha256 '1b05b18242144eca8e0a89982469129311d3a57e8e25788c90aa4d37e3e29bd7'

  url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release'
  name 'Jetbrains Rider'
  homepage 'https://www.jetbrains.com/rider/'

  auto_updates true

  app 'Rider.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'rider') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/Rider#{version.major_minor}",
               "~/Library/Caches/Rider#{version.major_minor}",
               "~/Library/Logs/Rider#{version.major_minor}",
               "~/Library/Preferences/Rider#{version.major_minor}",
               '~/Library/Preferences/jetbrains.rider.71e559ef.plist',
               '~/Library/Saved Application State/com.jetbrains.rider.savedState',
             ]
end
