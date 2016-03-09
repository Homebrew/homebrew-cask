cask 'readytalk' do
  version :latest
  sha256 :no_check

  url 'https://core.readytalk.com/ql/bins/QuickLauncherInstall.dmg'
  name 'ReadyTalk Quick Launcher'
  homepage 'https://www.readytalk.com/'
  license :gratis

  app 'ReadyTalk Quick Launcher.app'
end
