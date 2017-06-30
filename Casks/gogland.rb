cask 'gogland' do
  # Gogland is EAP only for now
  version '1.0 EAP,171.4694.61'
  sha256 '557725553fe45cb0b39afe12a541e72f2cfdc1eec94ffb6a206af6a38b2d268f'

  url "https://download.jetbrains.com/go/gogland-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=eap',
          checkpoint: '7757490a536cbccee3bd59f79aa1dafd9bf14220b05a431dc60ce77fdb861572'
  name 'Gogland'
  name 'Gogland EAP'
  homepage 'https://www.jetbrains.com/go/'

  auto_updates true

  app "Gogland #{version.before_comma}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'Gogland') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Preferences/Gogland#{version.major_minor}",
                "~/Library/Application Support/Gogland#{version.major_minor}",
                "~/Library/Caches/Gogland#{version.major_minor}",
                "~/Library/Logs/Gogland#{version.major_minor}",
              ]
end
