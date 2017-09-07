cask 'phpstorm' do
  version '2017.2.3,172.4155.25'
  sha256 '657db5b8eaa4736eb419d5d5d14203d103cbef8d11a63b7ef1a448b180d1b6c6'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release',
          checkpoint: '792fbc13fd6aae65995f4ad2d50026b52e7620e558cc0dcbe9f5b9bdc6e6d663'
  name 'JetBrains PhpStorm'
  homepage 'https://www.jetbrains.com/phpstorm/'

  auto_updates true

  app 'PhpStorm.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'pstorm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/PhpStorm#{version.major_minor}",
                "~/Library/Logs/PhpStorm#{version.major_minor}",
              ],
      trash:  [
                "~/Library/Application Support/PhpStorm#{version.major_minor}",
                "~/Library/Preferences/PhpStorm#{version.major_minor}",
                '~/Library/Preferences/jetbrains.phpstorm.*.plist',
              ]
end
