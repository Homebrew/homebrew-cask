cask 'clion' do
  version '2018.1.2,181.4668.70'
  sha256 '2d0353fcea8f85d80116b30a9776b698251c1d80611791ac852262d8dc189cd1'

  url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release',
          checkpoint: '6c9d8fc431251545227181d81b88e12f50f102b79e5225884070fd8e3d9779ac'
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion/'

  auto_updates true

  app 'CLion.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'clion') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/CLion#{version.major_minor}",
               "~/Library/Caches/CLion#{version.major_minor}",
               "~/Library/Logs/CLion#{version.major_minor}",
               "~/Library/Preferences/CLion#{version.major_minor}",
             ]
end
