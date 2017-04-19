cask 'gogland' do
  # Gogland is EAP only for now
  version '1.0,171.3780.106'
  sha256 '6b700b1437304e1e58ea3d1f866b2b3545cc83642bcc9a727887f9e0c998a097'

  url "https://download.jetbrains.com/go/gogland-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=eap',
          checkpoint: 'ab45225047d94c87872bf592b51a028157c187dd71cd96b828c4d01917ba321e'
  name 'Gogland'
  name 'Gogland EAP'
  homepage 'https://www.jetbrains.com/go/'

  auto_updates true

  app "Gogland #{version.before_comma} EAP.app"

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
