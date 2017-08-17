cask 'appcode' do
  version '2017.2.1,172.3757.56'
  sha256 '53c59169272c8be502020ec1189d178aa7c0a6d28235e9fab640b317b407fc39'

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release',
          checkpoint: '5465ff0188182a116bc760b067e9195a02cafab6437a2b349961ba02fa9b7cca'
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
