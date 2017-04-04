cask 'datagrip' do
  version '2017.1,171.3780.102'
  sha256 '1ebc833e3bd9acdb3837c393bd993cb0bd03a09b681cfeeb5fa2d3bb523be9da'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release',
          checkpoint: '8f904c3a1e9958b6da7a6a087001c23f46a60a7159635220ef73c42887172f5f'
  name 'DataGrip'
  homepage 'https://www.jetbrains.com/datagrip/'

  auto_updates true
  conflicts_with cask: 'datagrip-eap'

  app 'DataGrip.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'datagrip') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Preferences/DataGrip#{version.major_minor}",
                "~/Library/Application Support/DataGrip#{version.major_minor}",
                "~/Library/Caches/DataGrip#{version.major_minor}",
                "~/Library/Logs/DataGrip#{version.major_minor}",
              ]
end
