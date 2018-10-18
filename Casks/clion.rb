cask 'clion' do
  version '2018.2.5,182.4892.24'
  sha256 '7c49d2dbd6e3bacb42a964502dbb306dac6bff24d8f9cdb56479557a33bf6d85'

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
