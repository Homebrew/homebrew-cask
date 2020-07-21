cask 'mps' do
  version '2020.1.3,201.8538.1503'
  sha256 '03ab31cf173456be36b55dfd2255ccbe2810f7452db82e88ac3f6a158eb2dc29'

  url "https://download.jetbrains.com/mps/#{version.before_comma.major_minor}/MPS-#{version.before_comma}-macos.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release'
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
