cask 'rider' do
  version '2018.2.3,182.4231.496'
  sha256 '83817839fb3e5ef44bfe61f360adadf9e8a1597438589723282eed9fc7199dee'

  url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release'
  name 'Jetbrains Rider'
  homepage 'https://www.jetbrains.com/rider/'

  auto_updates true

  app "Rider #{version.before_comma}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'rider') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/Rider#{version.major_minor}",
               "~/Library/Caches/Rider#{version.major_minor}",
               "~/Library/Logs/Rider#{version.major_minor}",
               "~/Library/Preferences/Rider#{version.major_minor}",
               '~/Library/Preferences/jetbrains.rider.71e559ef.plist',
               '~/Library/Saved Application State/com.jetbrains.rider.savedState',
             ]
end
