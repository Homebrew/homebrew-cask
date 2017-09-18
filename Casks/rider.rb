cask 'rider' do
  version '2017.1.2,171.4456.3568'
  sha256 '8292e143e717e47d702b3121a2070b687371faf8fa995eb83d6b55a9d5aa6ffd'

  url "https://download.jetbrains.com/resharper/JetBrains.Rider-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release',
          checkpoint: '35c8421a55cc7099078f9483843f6ce74ceaabfffe3ab75334ee966883ce7a6f'
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
