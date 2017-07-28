cask 'pycharm' do
  version '2017.2,172.3317.103'
  sha256 '944da494b53e2cad163276fa1e2c8c68bb48d2e4bbc63fc645acc47bdbfc1671'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCP&latest=true&type=release',
          checkpoint: '91843fea3ddf45dbad2469dcdcbf8e7809738ca5c0315d4bff1bdf69fc0a90e1'
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'

  auto_updates true

  app 'PyCharm.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'charm') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Preferences/PyCharm#{version.major_minor}",
                "~/Library/Application Support/PyCharm#{version.major_minor}",
                "~/Library/Caches/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharm#{version.major_minor}",
              ]
end
