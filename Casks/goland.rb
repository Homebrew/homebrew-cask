cask 'goland' do
  # GoLand is EAP only for now
  version '1.0 EAP,173.3727.24'
  sha256 '8b9332fc78c11993ff671d418d3da282a49c4fc5f4c7493a7c2bbfd979163e1e'

  url "https://download.jetbrains.com/go/goland-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=eap',
          checkpoint: '058a7a8c0adb3a11608d69c27aeee26051d39488eae168b6e7a46d8ec7f841bf'
  name 'Goland'
  name 'Goland EAP'
  homepage 'https://www.jetbrains.com/go/'

  auto_updates true

  app "GoLand #{version.before_comma}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'goland') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  # The folders GoLand creates are still named Gogland. This should be checked after the first non-EAP release.
  zap trash: [
               "~/Library/Application Support/Gogland#{version.major_minor}",
               "~/Library/Caches/Gogland#{version.major_minor}",
               "~/Library/Logs/Gogland#{version.major_minor}",
               "~/Library/Preferences/Gogland#{version.major_minor}",
             ]
end
