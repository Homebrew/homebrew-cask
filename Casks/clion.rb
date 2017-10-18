cask 'clion' do
  version '2017.2.3,172.4343.16'
  sha256 '81df9ed4fb86b9e2e49b7a9be9d89e2d2248ea44270ad09752122f094a6052fc'

  url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release',
          checkpoint: 'eb4dbf907a119bde482c518dc9171cb60707274cd63ca09c6db6d4538b2d4236'
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion/'

  auto_updates true

  app 'CLion.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'clion') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/CLion#{version.major_minor}",
                "~/Library/Logs/CLion#{version.major_minor}",
              ],
      trash:  [
                "~/Library/Preferences/CLion#{version.major_minor}",
                "~/Library/Application Support/CLion#{version.major_minor}",
              ]
end
