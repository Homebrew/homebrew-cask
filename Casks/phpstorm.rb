cask 'phpstorm' do
  version '2017.2.2,172.3968.35'
  sha256 'e5d2b859eb998c974f07abbad84afefd5416c7b045e0d8739a23345e7864e55d'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release',
          checkpoint: '7852a6612f7638ec428b1034ad2d76bcf0e44b0e262be6b700f09a94489e6760'
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
