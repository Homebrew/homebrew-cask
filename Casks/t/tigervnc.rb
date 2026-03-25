cask "tigervnc" do
  version "1.16.1"
  sha256 "d1e1515e50bf1572a743f05df8573c75e29f18c7a29f28f94a289c7bf1779433"

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
