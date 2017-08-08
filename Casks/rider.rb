cask 'rider' do
  version '2017.1,171.4456.2169'
  sha256 '9867f139c98b8ccaadfeb063b1919c8035d72d1021e0108369ef44df43cd765f'

  url "https://download.jetbrains.com/resharper/JetBrains.Rider-#{version.major_minor}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release',
          checkpoint: 'be17267b11d726d6879f7c47e579543565dc613167e3564b4935eed2c08caae8'
  name 'Jetbrains Rider'
  homepage 'https://www.jetbrains.com/rider/'

  auto_updates true

  app "Rider #{version.major_minor}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'rider') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/Rider#{version.major_minor}",
                "~/Library/Logs/Rider#{version.major_minor}",
                '~/Library/Saved Application State/com.jetbrains.rider.savedState',
              ],
      trash:  [
                "~/Library/Application Support/Rider#{version.major_minor}",
                "~/Library/Preferences/Rider#{version.major_minor}",
                '~/Library/Preferences/jetbrains.rider.71e559ef.plist',
              ]
end
