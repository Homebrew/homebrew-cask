cask 'rider' do
  version '2017.1.1,171.4456.2813'
  sha256 'fd07b5e11c3caaaf279cacc80dbe8e3370be60bcf215ef199d2228e55482a787'

  url "https://download.jetbrains.com/resharper/JetBrains.Rider-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release',
          checkpoint: 'd155695514eaee4c992b12c286127a178066ac37edfa3566c8343853b36f9105'
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
