cask 'pycharm' do
  version '2017.2.1,172.3544.44'
  sha256 'ee4c70ff965f697839a8546b79f6d5057359f2738fff3681461d6529b310b87e'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCP&latest=true&type=release',
          checkpoint: '79e7174a92d7466569b24b40113f7f5f458be318ee7ae8dd1108a2358d26e19e'
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
