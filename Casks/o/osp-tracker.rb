cask "osp-tracker" do
  version "6.1.4"
  sha256 "9942d542ea7fde4f6b64b35c1ce982efb7c6fe80ec16de541b5a05b6e6812214"

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
