cask 'rubymine' do
  version '2019.2,192.5728.104'
  sha256 '9b8776c4e850aa05e8f5e2f87195085789ae1563099862d83da6a734b4d2d0ce'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release'
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'

  auto_updates true

  app 'RubyMine.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'mine') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/RubyMine#{version.major_minor}",
               "~/Library/Caches/RubyMine#{version.major_minor}",
               "~/Library/Logs/RubyMine#{version.major_minor}",
               "~/Library/Preferences/RubyMine#{version.major_minor}",
             ]
end
