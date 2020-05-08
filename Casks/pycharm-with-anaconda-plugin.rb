cask 'pycharm-with-anaconda-plugin' do
  version '2020.1.1'
  sha256 '6a3db1131ca312a12ad0fc68369103c3e9c77e97486c63c8717b29dbdc3b06b4'

  url "https://download-cf.jetbrains.com/python/pycharm-professional-anaconda-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release'
  name 'Jetbrains PyCharm with Anaconda plugin'
  homepage 'https://www.jetbrains.com/pycharm/promo/anaconda'

  auto_updates true

  app 'PyCharm with Anaconda plugin .app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'charm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               '~/Library/Application Support/JetBrains/PyCharm*',
               '~/Library/Saved Application State/com.jetbrains.pycharm.savedState',
             ]
end
