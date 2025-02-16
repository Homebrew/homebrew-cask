cask "tigervnc-viewer" do
  version "1.15.0"
  sha256 "e43877091f694558f003c2b0e686585c80ed19dd8c8280f0e9817a48b269176c"

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
