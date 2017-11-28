cask 'goland' do
  # GoLand is EAP only for now
  version '2017.3 EAP,173.3727.96'
  sha256 'c64e67df12cc549e61e480bb68be1eec4b3eb5de4ee7fc463fc675a166f3ded1'

  url "https://download.jetbrains.com/go/goland-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=eap',
          checkpoint: '068e574c0f457279e5b4eafd365d0b2c61fbf1f553b38ac83de3dba074a977fa'
  name 'Goland'
  name 'Goland EAP'
  homepage 'https://www.jetbrains.com/go/'

  auto_updates true

  app "GoLand #{version.before_comma}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'goland') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/GoLand#{version.major_minor}",
               "~/Library/Caches/GoLand#{version.major_minor}",
               "~/Library/Logs/GoLand#{version.major_minor}",
               "~/Library/Preferences/GoLand#{version.major_minor}",
             ]
end
