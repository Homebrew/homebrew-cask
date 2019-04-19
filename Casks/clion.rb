cask 'clion' do
  version '2019.1.2,191.6707.69'
  sha256 '71d862496d13919d536eb3992cc26bdc80f4e7208378e27d21b437dcf5d88d5b'

  url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release'
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion/'

  auto_updates true

  app 'CLion.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'clion') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/CLion#{version.major_minor}",
               "~/Library/Caches/CLion#{version.major_minor}",
               "~/Library/Logs/CLion#{version.major_minor}",
               "~/Library/Preferences/CLion#{version.major_minor}",
             ]
end
