cask 'pycharm-edu' do
  version '4.0,172.3663'
  sha256 '18c7222c30292af9a3fa22c9d54a66dc46db65187a3ba4ff9ffbb553f26697f2'

  url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCE&latest=true&type=release',
          checkpoint: '9c462878e4694156189ae9b30d4e3d47a730d69c4bef9e926577e62862681751'
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
