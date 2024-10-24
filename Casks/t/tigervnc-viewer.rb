cask "tigervnc-viewer" do
  version "1.14.1"
  sha256 "c5a16a4aafb4edf37b48e41f502ff8798b24061388225b7f15cba21ef957612b"

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
