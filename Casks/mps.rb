cask 'mps' do
  version '2018.1,181.1168'
  sha256 'be094a907f63502756b48beb70e5ccc7e30d43dfff61d0138f9a27d05504b14f'

  url "https://download.jetbrains.com/mps/#{version.before_comma.major_minor}/MPS-#{version.before_comma}-macos-jdk-bundled.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release',
          checkpoint: 'caaf4be8c21071fab067172bbc8c9f06730c138d710657bb6123113454380c98'
  name 'JetBrains MPS'
  homepage 'https://www.jetbrains.com/mps/'

  auto_updates true

  app "MPS #{version.major_minor}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'mps') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/MPSSamples.#{version.before_comma.major_minor}",
               "~/Library/Application Support/MPS#{version.before_comma.major_minor}",
               "~/Library/Caches/MPS#{version.before_comma.major_minor}",
               "~/Library/Logs/MPS#{version.before_comma.major_minor}",
               "~/Library/Preferences/MPS#{version.before_comma.major_minor}",
             ]
end
