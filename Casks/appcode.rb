cask 'appcode' do
  version '2017.2,172.3317.89'
  sha256 '0ce503b58a8215dca1742bcfbcc62dd70301e2f7ddc07bade7b5fe413c3df209'

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release',
          checkpoint: 'f0218c70b86a4cdd6149ac6298e29e7cedaaec0797e7350397beae7eabe40e0a'
  name 'AppCode'
  homepage 'https://www.jetbrains.com/objc/'

  auto_updates true

  app 'AppCode.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'appcode') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/AppCode#{version.major_minor}",
                "~/Library/Logs/AppCode#{version.major_minor}",
              ],
      trash:  [
                "~/Library/Preferences/AppCode#{version.major_minor}",
                "~/Library/Application Support/AppCode#{version.major_minor}",
              ]
end
