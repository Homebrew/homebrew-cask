cask 'appcode' do
  version '2018.3.2,183.4886.47'
  sha256 'e14b1ba15a863ed47e7119a0f2098777d77d6376c72390fd1a7394c63fbe1426'

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
