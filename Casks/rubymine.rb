cask 'rubymine' do
  version '2017.2.2,172.3757.57'
  sha256 'aa15f34a2bf92df79a931bab50ea93c612181941847e37cddb12d5440e1064bb'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release',
          checkpoint: '1388c11a006e77c7279d6b136bb5b20a379d88d8c16c6c9ae18b55ca4766e7ce'
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'

  auto_updates true

  app 'RubyMine.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'mine') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/RubyMine#{version.major_minor}",
                "~/Library/Logs/RubyMine#{version.major_minor}",
              ],
      trash:  [
                "~/Library/Application Support/RubyMine#{version.major_minor}",
                "~/Library/Preferences/RubyMine#{version.major_minor}",
              ]
end
