cask 'phpstorm' do
  version '2017.3.6,173.4674.46'
  sha256 'c4998211d07111754826c3f4da3ac8e4646048c14ae0481ddd7f743032f884e5'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release',
          checkpoint: '764f2dc8ca5c685ea4685026117339c9903a34838657482d41e98f3489b1c906'
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
