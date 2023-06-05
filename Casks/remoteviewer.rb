cask "remoteviewer" do
  version "0.5.7-1"
  sha256 "96ec9eb33422ac8a717238a7f99fded7c50503198d7302028a09f4e536b02849"

  url "https://people.freedesktop.org/~teuf/spice-gtk-osx/dmg/#{version.split("-").first}/RemoteViewer-#{version}.dmg",
      verified: "people.freedesktop.org/~teuf/spice-gtk-osx/"
  name "Remote Viewer"
  desc "Connect to virtual machines using SPICE"
  homepage "https://www.spice-space.org/osx-client.html"

  livecheck do
    url :homepage
    regex(/href=.*?RemoteViewer[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  app "RemoteViewer.app"

  # No zap stanza required
end
