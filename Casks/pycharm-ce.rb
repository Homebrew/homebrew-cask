cask 'pycharm-ce' do
  version '2019.2.5,192.7142.56'
  sha256 'fbe702bd4f6490cd84d172c06527e9cf1aed1311ed17f2f9fdcab8f20a10b909'

  url "https://download.jetbrains.com/python/pycharm-community-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release'
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm/'

  auto_updates true

  app 'PyCharm CE.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'charm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/PyCharm#{version.major_minor}",
               "~/Library/Caches/PyCharmCE#{version.major_minor}",
               "~/Library/Caches/PyCharm#{version.major_minor}",
               "~/Library/Logs/PyCharm#{version.major_minor}",
               "~/Library/Logs/PyCharmCE#{version.major_minor}",
               "~/Library/Preferences/PyCharm#{version.major_minor}",
               "~/Library/Preferences/PyCharmCE#{version.major_minor}",
               '~/Library/Saved Application State/com.jetbrains.pycharm.savedState',
             ]
end
