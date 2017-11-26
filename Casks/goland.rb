cask 'goland' do
  # GoLand is EAP only for now
  version '1.0 EAP,173.3727.73'
  sha256 'a5a551b3f3c2416a0d0f4bc2d833df7e3f23c458c748ccf04ccec41c14bc47a7'

  url "https://download.jetbrains.com/go/goland-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=eap',
          checkpoint: '07d8bc4b5a9e946af9bb007a86413d74ce58c500b9ecc525fa52038fe3924d51'
  name 'Goland'
  name 'Goland EAP'
  homepage 'https://www.jetbrains.com/go/'

  auto_updates true

  app "GoLand #{version.before_comma}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'goland') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  # The folders GoLand creates are still named Gogland. This should be checked after the first non-EAP release.
  zap trash: [
               "~/Library/Application Support/Gogland#{version.major_minor}",
               "~/Library/Caches/Gogland#{version.major_minor}",
               "~/Library/Logs/Gogland#{version.major_minor}",
               "~/Library/Preferences/Gogland#{version.major_minor}",
             ]
end
