cask 'intellij-idea' do
  version '2017.2.4,172.4155.36'
  sha256 '1bb5b6d1c37edd72e07e117f08f049b024b49cc70f58af063255f43401d5661a'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release',
          checkpoint: '9b30624f2f30f529f6c1b532ea4388cf7555dd957562643d7222c41828731be1'
  name 'IntelliJ IDEA Ultimate'
  homepage 'https://www.jetbrains.com/idea/'

  auto_updates true

  app 'IntelliJ IDEA.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'idea') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end
end
