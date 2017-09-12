cask 'appcode' do
  version '2017.2.3,172.4155.34'
  sha256 '4e4d50673008872e06a43e28244fbd2b2deafcd1a2ffb54aa7e981e7bdd0f873'

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release',
          checkpoint: '9ec4bd9c71d321396c896b7b6ac5911de9a3169c8eab2c8752b368690a25c7a7'
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
