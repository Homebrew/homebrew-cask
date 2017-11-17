cask 'mps' do
  version '2017.2.2,172.1347'
  sha256 'dea35f802a5d2d58d5e5093e8383812276abad9c913b14b919784a45e1aed0b7'

  url "https://download.jetbrains.com/mps/#{version.before_comma.major_minor}/MPS-#{version.before_comma}-macos-jdk-bundled.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release',
          checkpoint: '22c619c16c9c632d5b7172f28cd6f5cf78e0d5dcb63c0881b23dd3dbe4e78a30'
  name 'JetBrains MPS'
  homepage 'https://www.jetbrains.com/mps/'

  auto_updates true

  app "MPS #{version.major_minor}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'mps') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/MPSSamples.#{version.before_comma.major_minor}",
               "~/Library/Caches/MPS#{version.before_comma.major_minor}",
               "~/Library/Logs/MPS#{version.before_comma.major_minor}",
               "~/Library/Application Support/MPS#{version.before_comma.major_minor}",
               "~/Library/Preferences/MPS#{version.before_comma.major_minor}",
             ]
end
