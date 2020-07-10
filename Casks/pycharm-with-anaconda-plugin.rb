cask 'pycharm-with-anaconda-plugin' do
  version '2020.1.3'
  sha256 'e71c5b6df9777d62774029a7a49acd541bd9b2b8e5b87adb52b1eb4d33cc43a4'

  url "https://download.jetbrains.com/python/pycharm-professional-anaconda-#{version}.dmg"
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
