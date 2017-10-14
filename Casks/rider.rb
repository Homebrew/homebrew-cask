cask 'rider' do
  version '2017.2,172.4144.1459'
  sha256 'eeb6f1cb1c83eee627603d3e2b1f81898c8b62a7a608080b1c5dad83256c0f0a'

  url "https://download.jetbrains.com/resharper/JetBrains.Rider-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release',
          checkpoint: '5626181012c54ef310ee2c177753f31a1c023e4a4e8cafe5a63f4c09c5cd1b2e'
  name 'Jetbrains Rider'
  homepage 'https://www.jetbrains.com/rider/'

  auto_updates true

  app "Rider #{version.before_comma}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'rider') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/Rider#{version.major_minor}",
                "~/Library/Logs/Rider#{version.major_minor}",
                '~/Library/Saved Application State/com.jetbrains.rider.savedState',
              ],
      trash:  [
                "~/Library/Application Support/Rider#{version.major_minor}",
                "~/Library/Preferences/Rider#{version.major_minor}",
                '~/Library/Preferences/jetbrains.rider.71e559ef.plist',
              ]
end
