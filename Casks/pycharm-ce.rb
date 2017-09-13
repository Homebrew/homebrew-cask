cask 'pycharm-ce' do
  version '2017.2.3,172.3968.37'
  sha256 '77aa9930be611ec3f4e72d74c897dac5a98b4e61884a4048d31e4598f94bb9ff'

  url "https://download.jetbrains.com/python/pycharm-community-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release',
          checkpoint: '65c4f3de2feb40c890b5d70d75b6841222f6fac8946f27fbdee08f463b3abe0d'
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm/'

  auto_updates true

  app 'PyCharm CE.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'charm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end
end
