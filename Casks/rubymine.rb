cask 'rubymine' do
  version '2019.3.2,193.6015.43'
  sha256 '3c3670c699f6f0665279ddd66313ce595b29ec7ee4a07b8b44320963740ed1d9'

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
