cask 'pycharm' do
  version '2019.2.3,192.6817.19'
  sha256 'f8f2738eded9eae5e85b283bc252cf48c2dac87f1b2473aad43e04a337550a06'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCP&latest=true&type=release'
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'

  auto_updates true

  app 'PyCharm.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'charm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/PyCharm#{version.major_minor}",
               "~/Library/Caches/PyCharm#{version.major_minor}",
               "~/Library/Logs/PyCharm#{version.major_minor}",
               "~/Library/Preferences/PyCharm#{version.major_minor}",
             ]
end
