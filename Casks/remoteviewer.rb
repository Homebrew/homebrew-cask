cask "remoteviewer" do
  version "0.5.7,1"
  sha256 "96ec9eb33422ac8a717238a7f99fded7c50503198d7302028a09f4e536b02849"

  # people.freedesktop.org/~teuf/spice-gtk-osx/ was verified as official when first introduced to the cask
  url "https://people.freedesktop.org/~teuf/spice-gtk-osx/dmg/#{version.before_comma}/RemoteViewer-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast "https://www.spice-space.org/osx-client.html"
  name "Remote Viewer"
  homepage "https://www.spice-space.org/osx-client.html"

  app "RemoteViewer.app"
end
