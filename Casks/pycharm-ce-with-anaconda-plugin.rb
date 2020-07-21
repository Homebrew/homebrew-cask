cask 'pycharm-ce-with-anaconda-plugin' do
  version '2020.1.3'
  sha256 'a783ac286516e76769a797531990e8c4d0bda5604d6550b6041c4a54dd69a53a'

  url "https://download.jetbrains.com/python/pycharm-community-anaconda-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release'
  name 'Jetbrains PyCharm Community Edition with Anaconda plugin'
  name 'PyCharm CE with Anaconda plugin'
  homepage 'https://www.jetbrains.com/pycharm/promo/anaconda'

  auto_updates true

  app 'PyCharm CE with Anaconda plugin.app'

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
