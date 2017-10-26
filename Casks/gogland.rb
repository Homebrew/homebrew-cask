cask 'gogland' do
  # Gogland is EAP only for now
  version '1.0 EAP,173.3415.23'
  sha256 'dc4cf68a0dbb60d4658d8ed83d835b5db1f0256469cb2c91e329ec9447f13be8'

  url "https://download.jetbrains.com/go/gogland-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=eap',
          checkpoint: 'd9a0453b9d3d32336761147aeadc2de4c59580730ade2b7e83bf664126d8c643'
  name 'Gogland'
  name 'Gogland EAP'
  homepage 'https://www.jetbrains.com/go/'

  auto_updates true

  app "Gogland #{version.before_comma}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'Gogland') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/Gogland#{version.major_minor}",
                "~/Library/Logs/Gogland#{version.major_minor}",
              ],
      trash:  [
                "~/Library/Preferences/Gogland#{version.major_minor}",
                "~/Library/Application Support/Gogland#{version.major_minor}",
              ]
end
