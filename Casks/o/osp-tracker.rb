cask "osp-tracker" do
  version "6.1.6"
  sha256 "2a46551b0b2ca029834c8726f11275df1088d48156d99c4f6761ff7dba93267f"

  url "https://physlets.org/tracker/installers/download.php?file=Tracker-#{version}-osx-installer.dmg"
  name "Tracker"
  desc "Video analysis and modeling tool for physics education"
  homepage "https://physlets.org/tracker/"

  livecheck do
    url :homepage
    regex(/href=.*?file=Tracker[._-]v?(\d+(?:\.\d+)+)-osx-installer\.dmg/i)
  end

  installer script: {
    executable: "Tracker-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/usr/local/tracker/uninstall_Tracker.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  zap trash: "~/Library/Saved Application State/org.opensourcephysics.cabrillo.tracker.savedState"
end
