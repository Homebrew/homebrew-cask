cask 'pycharm' do
  version '2020.1.2,201.7846.77'
  sha256 'ecc345f30a39e67fc441b49adca77ab1ba0479971c6a6527d45dc0cf4fbdd4a9'

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
               "~/Library/Application Support/JetBrains/PyCharm#{version.major_minor}",
               "~/Library/Caches/PyCharm#{version.major_minor}",
               "~/Library/Logs/PyCharm#{version.major_minor}",
               "~/Library/Preferences/PyCharm#{version.major_minor}",
               '~/Library/Preferences/jetbrains.pycharm.*.plist',
               '~/Library/Saved Application State/com.jetbrains.pycharm.savedState',
             ]
end
