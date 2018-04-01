cask 'remoteviewer' do
  version '0.5.7-1'
  sha256 '96ec9eb33422ac8a717238a7f99fded7c50503198d7302028a09f4e536b02849'

  # people.freedesktop.org/~teuf/spice-gtk-osx was verified as official when first introduced to the cask
  url "https://people.freedesktop.org/~teuf/spice-gtk-osx/dmg/#{version.sub(%r{-.*}, '')}/RemoteViewer-#{version}.dmg"
  name 'Remote Viewer'
  homepage 'https://www.ovirt.org/documentation/admin-guide/virt/spice-remote-viewer-on-os-x/'

  app 'RemoteViewer.app'
end
