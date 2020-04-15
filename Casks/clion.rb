cask 'clion' do
  version '2020.1,201.6668.126'
  sha256 '89c64018b3f2d96f3130520ef09729c03ec9b9c00487c1c022ae8b8cee8c272d'

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
