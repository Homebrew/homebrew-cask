cask 'datagrip' do
  version '2017.2.1,172.3757.39'
  sha256 '3691371508e198f46db5c1d7a46b34978cfbcbdfe11a845a228440f3f15bf93f'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release',
          checkpoint: '13bd8149d0db2b10af9fd5824888172501f880fe327e843946f697ea20c6692a'
  name 'DataGrip'
  homepage 'https://www.jetbrains.com/datagrip/'

  auto_updates true

  app 'DataGrip.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'datagrip') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/DataGrip#{version.major_minor}",
                "~/Library/Logs/DataGrip#{version.major_minor}",
              ],
      trash:  [
                "~/Library/Preferences/DataGrip#{version.major_minor}",
                "~/Library/Application Support/DataGrip#{version.major_minor}",
              ]
end
