cask 'pycharm-edu' do
  version '4.0.2,172.4539'
  sha256 '05e513ca542279a0ce00c68234bfa8aeaa938b99367f37d7a58699df401d9b01'

  url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCE&latest=true&type=release',
          checkpoint: '661300b3302ed8bcca9a58b3e839b2318a58ed6e199387b998b48678b0c00278'
  name 'Jetbrains PyCharm Educational Edition'
  name 'PyCharm Edu'
  homepage 'https://www.jetbrains.com/pycharm-edu/'

  auto_updates true

  app 'PyCharm Edu.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'charm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/PyCharmEdu#{version.major_minor.no_dots}",
               "~/Library/Caches/PyCharmEdu#{version.major_minor.no_dots}",
               "~/Library/Logs/PyCharmEdu#{version.major_minor.no_dots}",
               "~/Library/Preferences/PyCharmEdu#{version.major_minor.no_dots}",
             ]
end
