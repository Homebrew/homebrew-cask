cask 'goland' do
  # Goland is EAP only for now
  version '1.0 EAP,173.3531.21'
  sha256 'd99a60d18c4c2621fa4643408963284630d74724019bf359bbf419707d1c2ab1'

  url "https://download.jetbrains.com/go/goland-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=eap',
          checkpoint: 'd9a0453b9d3d32336761147aeadc2de4c59580730ade2b7e83bf664126d8c643'
  name 'Goland'
  name 'Goland EAP'
  homepage 'https://www.jetbrains.com/go/'

  auto_updates true

  app "Goland #{version.before_comma}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'Goland') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/Goland#{version.major_minor}",
                "~/Library/Logs/Goland#{version.major_minor}",
              ],
      trash:  [
                "~/Library/Preferences/Goland#{version.major_minor}",
                "~/Library/Application Support/Goland#{version.major_minor}",
              ]
end
