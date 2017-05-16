cask 'clion' do
  version '2017.1.2,171.4694.4'
  sha256 '68f3ee7f6c72c59f7fab704a3e7f25d871cacda8b96689cb6acfac73cf2e73e3'

  url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release',
          checkpoint: '1d04119f4ea7e94159c97ec44d209da30d04a909e52a0d105ccc5a7401a084bd'
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion/'

  auto_updates true
  conflicts_with cask: 'clion-eap'

  app 'CLion.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'clion') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Preferences/CLion#{version.major_minor}",
                "~/Library/Application Support/CLion#{version.major_minor}",
                "~/Library/Caches/CLion#{version.major_minor}",
                "~/Library/Logs/CLion#{version.major_minor}",
              ]
end
