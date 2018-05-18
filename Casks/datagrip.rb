cask 'datagrip' do
  version '2018.1.3,181.5087.19'
  sha256 'dd26486fd438dab32c887f2ca1e77ef4c53cf9fa38a65af37bbc1b7c72f0dc01'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release',
          checkpoint: 'eb4af824cefd72931f26a5da958e2a78881ef7c951c7ba1dcc5ec9f51f18f421'
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
