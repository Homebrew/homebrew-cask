cask 'pycharm-with-anaconda-plugin' do
  version '2020.1,201.6668.115'
  sha256 'db98e30cc1c16c6cc68ca89949b4eb55dd36e03cbd2b7452b9be06a6ed0c16f4'

  url "https://download.jetbrains.com/python/pycharm-professional-anaconda-#{version.before_comma}.dmg"
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
