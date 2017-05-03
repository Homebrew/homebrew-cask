cask 'appcode' do
  version '2017.1.2,171.4249.57'
  sha256 '4e78fe0115de5f2e4c7086963ba76753c5b2a93845d17fb501488c328f9b8b58'

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release',
          checkpoint: 'b51c84e37f40e057398625e16f127b4c9e032efba48e42360033a023951e0ff8'
  name 'AppCode'
  homepage 'https://www.jetbrains.com/objc/'

  auto_updates true
  conflicts_with cask: 'appcode-eap'

  app 'AppCode.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'appcode') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Preferences/AppCode#{version.major_minor}",
                "~/Library/Application Support/AppCode#{version.major_minor}",
                "~/Library/Caches/AppCode#{version.major_minor}",
                "~/Library/Logs/AppCode#{version.major_minor}",
              ]
end
