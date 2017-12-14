cask 'pycharm-ce' do
  version '2017.3.1,173.3942.36'
  sha256 '130244a1a659b6de55b15eed1c3318d65aad05c57bfd3b0488de074f2e4ecbad'

  url "https://download.jetbrains.com/python/pycharm-community-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release',
          checkpoint: '8c19b7073ac39f4a43910a84d913043bce0ae0087aff1c3fa7b40c938b4afd45'
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
