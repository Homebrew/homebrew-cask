cask 'goland' do
  version '2017.3.3,173.4674.34'
  sha256 '7ae3bb7df5404851b9257fc6fa0cf14f3c79a6a66fafa275404b10986c9ea0c6'

  url "https://download.jetbrains.com/go/goland-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=release',
          checkpoint: 'af941295d78e95a0ffab9c4b538f97ba0d59f1285ed2248974c9c07a806794c5'
  name 'Goland'
  homepage 'https://www.jetbrains.com/go/'

  auto_updates true

  app 'GoLand.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'goland') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/GoLand#{version.major_minor}",
               "~/Library/Caches/GoLand#{version.major_minor}",
               "~/Library/Logs/GoLand#{version.major_minor}",
               "~/Library/Preferences/GoLand#{version.major_minor}",
             ]
end
