cask 'phpstorm' do
  version '2019.1.3,191.7479.51'
  sha256 '46aef1a6ca61c927bf603a48920745baabe77c156417d214674d508ad0ab1754'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release'
  name 'JetBrains PhpStorm'
  homepage 'https://www.jetbrains.com/phpstorm/'

  auto_updates true

  app 'PhpStorm.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'pstorm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/PhpStorm#{version.major_minor}",
               "~/Library/Caches/PhpStorm#{version.major_minor}",
               "~/Library/Logs/PhpStorm#{version.major_minor}",
               "~/Library/Preferences/PhpStorm#{version.major_minor}",
               '~/Library/Preferences/jetbrains.phpstorm.*.plist',
             ]
end
