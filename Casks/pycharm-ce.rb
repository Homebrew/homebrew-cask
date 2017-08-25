cask 'pycharm-ce' do
  version '2017.2.2,172.3757.67'
  sha256 'fe9441042070ae32af47135dfe031132849328035bb335154966b5bb77d89f0b'

  url "https://download.jetbrains.com/python/pycharm-community-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release',
          checkpoint: '0f527de7036b9cd802a9ddd6d00b6184099133bbfa7551675c0654ec95b3ed96'
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm/'

  auto_updates true

  app 'PyCharm CE.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'charm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/PyCharmCE#{version.major_minor}",
                "~/Library/Caches/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharmCE#{version.major_minor}",
                '~/Library/Saved Application State/com.jetbrains.pycharm.savedState',
              ],
      trash:  [
                "~/Library/Application Support/PyCharm#{version.major_minor}",
                "~/Library/Preferences/PyCharm#{version.major_minor}",
                "~/Library/Preferences/PyCharmCE#{version.major_minor}",
              ]
end
