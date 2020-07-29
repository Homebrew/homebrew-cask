cask 'pycharm-with-anaconda-plugin' do
  version '2020.1.2'
  sha256 '3b4c0fe0d324f1be355c8b1318affa49856a38b6a1a21ccfcb5341a996f2547a'

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
