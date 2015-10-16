cask :v1 => 'remoteviewer' do
  version '0.5.7'
  sha256 '96ec9eb33422ac8a717238a7f99fded7c50503198d7302028a09f4e536b02849'

  url 'http://people.freedesktop.org/~teuf/spice-gtk-osx/dmg/0.5.7/RemoteViewer-0.5.7-1.dmg'
  name 'Remote Viewer'
  homepage 'http://www.ovirt.org/SPICE_Remote-Viewer_on_OS_X'
  license :gratis

  app 'RemoteViewer.app'
end
