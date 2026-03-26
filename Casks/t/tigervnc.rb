cask "tigervnc" do
  version "1.16.2"
  sha256 "aa0ef07e4ebe4f068cbf1118273459b5b616177cb6abf15a538af018ebfb5933"

  url "https://downloads.sourceforge.net/tigervnc/TigerVNC-#{version}.dmg",
      verified: "downloads.sourceforge.net/tigervnc/"
  name "TigerVNC"
  desc "Multi-platform VNC client and server"
  homepage "https://tigervnc.org/"

  livecheck do
    url "https://sourceforge.net/projects/tigervnc/rss?path=/stable"
    regex(%r{url=.*?/TigerVNC[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "TigerVNC.app"

  zap trash: "~/Library/Saved Application State/com.tigervnc.tigervnc.savedState"
end
