cask 'pycharm' do
  version '2017.2.2,172.3757.67'
  sha256 'd2052075862965869abca600c9efdbd9fab16b879d3c6d955d85b1d78b11203a'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCP&latest=true&type=release',
          checkpoint: 'b262a749c0256148473c9c8cd42b584c0d3aa8ab52af9c7aa39ad3f859fca7f8'
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'

  auto_updates true

  app 'PyCharm.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'charm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharm#{version.major_minor}",
              ],
      trash:  [
                "~/Library/Application Support/PyCharm#{version.major_minor}",
                "~/Library/Preferences/PyCharm#{version.major_minor}",
              ]
end
