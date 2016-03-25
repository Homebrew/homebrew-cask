cask 'remoteviewer' do
  version '0.5.7-1'
  sha256 '96ec9eb33422ac8a717238a7f99fded7c50503198d7302028a09f4e536b02849'

  # freedesktop.org is the official download host per the vendor homepage
  url "https://people.freedesktop.org/~teuf/spice-gtk-osx/dmg/#{version.sub(%r{-.*}, '')}/RemoteViewer-#{version}.dmg"
  name 'Remote Viewer'
  homepage 'https://www.ovirt.org/SPICE_Remote-Viewer_on_OS_X'
  license :gratis

  app 'RemoteViewer.app'
end
