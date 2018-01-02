cask 'appcode' do
  version '2017.3.1,173.4127.30'
  sha256 'f007c55fe4fdee1e88a884971209605741fb9cac483e13cce9f59123bfbcc1e1'

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release',
          checkpoint: '659a689dfcad1eeecbb8aff4f1153164e4308fa06b67dbff5b4e24bc20790987'
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
