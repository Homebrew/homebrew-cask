cask 'pycharm-edu' do
  version '4.0.1,172.4327'
  sha256 '105707c95f1f354d9ec06b93eb6cd56ee1680de7bc92039f82f8c634e6ddfdf9'

  url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCE&latest=true&type=release',
          checkpoint: 'cd37afffb83d043ea76a9985583eb2677542abaec5ccbde1d63c06c72d965260'
  name 'Jetbrains PyCharm Educational Edition'
  name 'PyCharm Edu'
  homepage 'https://www.jetbrains.com/pycharm-edu/'

  auto_updates true

  app 'PyCharm Edu.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'charm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/PyCharmEdu#{version.major_minor.no_dots}",
                "~/Library/Logs/PyCharmEdu#{version.major_minor.no_dots}",
              ],
      trash:  [
                "~/Library/Application Support/PyCharmEdu#{version.major_minor.no_dots}",
                "~/Library/Preferences/PyCharmEdu#{version.major_minor.no_dots}",
              ]
end
