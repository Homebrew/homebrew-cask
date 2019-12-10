cask 'appcode' do
  version '2019.3,193.5233.118'
  sha256 'c3f40acd02c1159360f7056e7b927f10f6fc88b31e2e32dfd4596257cbfa7636'

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release'
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
