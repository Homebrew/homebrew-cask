cask :v1 => 'readytalk' do
  version :latest
  sha256 :no_check

  url 'https://core.readytalk.com/ql/bins/QuickLauncherInstall.dmg'
  name 'ReadyTalk Quick Launcher'
  homepage 'https://www.readytalk.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ReadyTalk Quick Launcher.app'
end
