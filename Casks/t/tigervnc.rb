cask "tigervnc" do
  version "1.16.0"
  sha256 "40b67a1478b798eed07df54e23bd3975c91b7abb07497044f93fe9b20f63ed5d"

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
