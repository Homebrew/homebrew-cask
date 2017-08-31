cask 'gogland' do
  # Gogland is EAP only for now
  version '1.0 EAP,172.3757.46'
  sha256 '857f85a2e23806828bff3bd48bbcb5897e563223e0303fb526a456c60b2d21b2'

  url "https://download.jetbrains.com/go/gogland-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=eap',
          checkpoint: 'ec0eb8cb71606cfe44d01f21d693803872d808a9929efaff9c70d866da01c98b'
  name 'Gogland'
  name 'Gogland EAP'
  homepage 'https://www.jetbrains.com/go/'

  auto_updates true

  app "Gogland #{version.before_comma}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'Gogland') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/Gogland#{version.major_minor}",
                "~/Library/Logs/Gogland#{version.major_minor}",
              ],
      trash:  [
                "~/Library/Preferences/Gogland#{version.major_minor}",
                "~/Library/Application Support/Gogland#{version.major_minor}",
              ]
end
