cask 'phpstorm' do
  version '2017.3.2,173.4127.29'
  sha256 '7546b196e6595c7eb7fc39d5dbb1f78291a017b785bc9f434583c5fd12f7867a'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release',
          checkpoint: 'b7d6414d9067a5123db9ebde3391b5de27392cf47babd543c83ee9d0db0a4279'
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
