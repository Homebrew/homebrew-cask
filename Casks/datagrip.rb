cask 'datagrip' do
  version '2019.2.5,192.6817.21'
  sha256 '4a7cc44a197d10cc435332b14a6b3993b5017a44cc1462f07e6f584624fd6020'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release'
  name 'DataGrip'
  homepage 'https://www.jetbrains.com/datagrip/'

  auto_updates true

  app 'DataGrip.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'datagrip') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/DataGrip#{version.major_minor}",
               "~/Library/Caches/DataGrip#{version.major_minor}",
               "~/Library/Logs/DataGrip#{version.major_minor}",
               "~/Library/Preferences/DataGrip#{version.major_minor}",
             ]
end
