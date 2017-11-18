cask 'phpstorm' do
  version '2017.2.4,172.4155.41'
  sha256 'e2476ea044b7f5bfb27b871072c45d65a48e7f348e4bdf6fe4dc0424f4220f1c'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release',
          checkpoint: 'f608ad177d59bad1f7138a38dd0dd550875a97fa98bfc5039478bbc30c71ae79'
  name 'JetBrains PhpStorm'
  homepage 'https://www.jetbrains.com/phpstorm/'

  auto_updates true

  app 'PhpStorm.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'pstorm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Caches/PhpStorm#{version.major_minor}",
               "~/Library/Logs/PhpStorm#{version.major_minor}",
               "~/Library/Application Support/PhpStorm#{version.major_minor}",
               "~/Library/Preferences/PhpStorm#{version.major_minor}",
               '~/Library/Preferences/jetbrains.phpstorm.*.plist',
             ]
end
