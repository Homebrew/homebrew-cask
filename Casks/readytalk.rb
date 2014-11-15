cask :v1 => 'readytalk' do
  version :latest
  sha256 :no_check

  url 'https://core.readytalk.com/ql/bins/QuickLauncherInstall.dmg'
  homepage 'https://www.readytalk.com/'
  license :unknown

  app 'ReadyTalk Quick Launcher.app'
end
