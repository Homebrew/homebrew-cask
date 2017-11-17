cask 'goland' do
  # GoLand is EAP only for now
  version '1.0 EAP,173.3531.21'
  sha256 'd99a60d18c4c2621fa4643408963284630d74724019bf359bbf419707d1c2ab1'

  url "https://download.jetbrains.com/go/goland-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=eap',
          checkpoint: 'a0b22fe9a3da17380d4c32aec623eeb0f2d13897d66cb39952ad497e13b2c1fe'
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
               "~/Library/Caches/Gogland#{version.major_minor}",
               "~/Library/Logs/Gogland#{version.major_minor}",
               "~/Library/Preferences/Gogland#{version.major_minor}",
               "~/Library/Application Support/Gogland#{version.major_minor}",
             ]
end
