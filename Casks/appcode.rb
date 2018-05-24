cask 'appcode' do
  version '2018.1.4,181.5087.34'
  sha256 '2842e1c2fa560ec3e5f8f924fcaaeb9316a7e7a675577571e68504f341626f0c'

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release',
          checkpoint: '455323883c1adeff7559e2b2171ec1fa7c7916591180482b8af1d87d09bd8b84'
  name 'AppCode'
  homepage 'https://www.jetbrains.com/objc/'

  auto_updates true

  app 'AppCode.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'appcode') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/AppCode#{version.major_minor}",
               "~/Library/Caches/AppCode#{version.major_minor}",
               "~/Library/Logs/AppCode#{version.major_minor}",
               "~/Library/Preferences/AppCode#{version.major_minor}",
             ]
end
