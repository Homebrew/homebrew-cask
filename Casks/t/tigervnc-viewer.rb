cask "tigervnc-viewer" do
  version "1.13.1"
  sha256 "d823197320e6903458f9039cb9d4dbf5d739ef7f9c18ccabfb68bc3fffe57b9d"

  url "https://downloads.sourceforge.net/tigervnc/TigerVNC-#{version}.dmg",
      verified: "downloads.sourceforge.net/tigervnc/"
  name "TigerVNC"
  desc "Multi-platform VNC client and server"
  homepage "https://tigervnc.org/"

  livecheck do
    url "https://sourceforge.net/projects/tigervnc/rss?path=/stable"
    regex(%r{url=.*?/TigerVNC[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "TigerVNC Viewer #{version}.app"

  zap trash: "~/Library/Saved Application State/com.tigervnc.tigervnc.savedState"
end
