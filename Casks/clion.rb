cask 'clion' do
  version '2017.2.2,172.3968.17'
  sha256 '158ca54010eaae690f468deaac9cd1a0e7905e28ff976514f40ca8dd901b1f47'

  url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release',
          checkpoint: 'b89f18c0e8117d17dd63c5d14dbc193e3eb3d3f10eb5a9e45623e1979a9173ef'
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion/'

  auto_updates true

  app 'CLion.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'clion') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/CLion#{version.major_minor}",
                "~/Library/Logs/CLion#{version.major_minor}",
              ],
      trash:  [
                "~/Library/Preferences/CLion#{version.major_minor}",
                "~/Library/Application Support/CLion#{version.major_minor}",
              ]
end
