cask 'clion' do
  version '2017.3,173.3727.114'
  sha256 '244532d50856f5fd3dd1785b18f6db4be9f0279346bcc2d58a4f40878fdbd80c'

  url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release',
          checkpoint: '47e7d97336fdfbaeac8754419ad9b2b6e7043b8994f067b97ccfedc0fe917a34'
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
