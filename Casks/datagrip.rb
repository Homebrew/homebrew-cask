cask 'datagrip' do
  version '2017.1.1,171.4073.34'
  sha256 '74ae0f0fc03da294aec816b52a53e8c23dee84b4fe13a610c48c9db28b604f9b'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release',
          checkpoint: '67e9d97e19aace63633ec38432330332059e67fbf8e58ed1e91e93dc6eb6296c'
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
