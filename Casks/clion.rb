cask 'clion' do
  version '2017.2,172.3317.49'
  sha256 'acb425e7afb5908da72a3d89aa32a8be2671d974f25777162c32d9e697d7eb19'

  url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release',
          checkpoint: '45ed65fdd21f93f9506b3cfd9bdc1e9279692ffeb8b347112eb7fe2c6d3d8b1d'
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion/'

  auto_updates true

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
