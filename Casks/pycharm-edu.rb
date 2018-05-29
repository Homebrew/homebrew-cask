cask 'pycharm-edu' do
  version '2018.1.2,181.5087.43'
  sha256 '16e275118bad9e5efb0b1c2608ed108b980a4c08972019e66e27f79573f827d5'

  url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCE&latest=true&type=release',
          checkpoint: 'b667f3e263ae31a0d9659ab5af02c666a0b6b78fcf790a798470086149c71046'
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
