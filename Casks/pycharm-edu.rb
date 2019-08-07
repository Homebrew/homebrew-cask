cask 'pycharm-edu' do
  version '2019.2,192.5728.125'
  sha256 '1cc357c7e80492690dedb74051be3ed997f63c95fadac20f20678fd483e40fcb'

  url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCE&latest=true&type=release'
  name 'Jetbrains PyCharm Educational Edition'
  name 'PyCharm Edu'
  homepage 'https://www.jetbrains.com/pycharm-edu/'

  auto_updates true

  app 'PyCharm Edu.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'charm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/PyCharmEdu#{version.major_minor}",
               "~/Library/Caches/PyCharmEdu#{version.major_minor}",
               "~/Library/Logs/PyCharmEdu#{version.major_minor}",
               "~/Library/Preferences/PyCharmEdu#{version.major_minor}",
             ]
end
