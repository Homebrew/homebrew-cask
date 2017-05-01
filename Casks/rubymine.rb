cask 'rubymine' do
  version '2017.1.2,171.4249.48'
  sha256 '74d4e91495d396d721f4526539b9a4cfc4b6db4dd95f5578e890d4c1287c5fde'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release',
          checkpoint: '458fe7898d5d95ea205e726c16ca4e0c2c3a6c51d6e6053e61aad07084fc385f'
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'

  auto_updates true
  conflicts_with cask: 'rubymine-eap'

  app 'RubyMine.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'mine') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Application Support/RubyMine#{version.major_minor}",
                "~/Library/Preferences/RubyMine#{version.major_minor}",
                "~/Library/Caches/RubyMine#{version.major_minor}",
                "~/Library/Logs/RubyMine#{version.major_minor}",
              ]
end
