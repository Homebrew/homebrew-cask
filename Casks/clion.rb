cask 'clion' do
  version '2017.1.1,171.4073.41'
  sha256 'e5ee4856a7c64db9207208243af2b39157ed7bdca6d027309705c021689655e6'

  url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release',
          checkpoint: '63eeb90eee2f6cab33735159cf488af97fe1af4b958ba5edd19598bd61e940eb'
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
