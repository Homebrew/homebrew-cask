cask "osp-tracker" do
  version "6.1.1"
  sha256 "2cc845ee756f4ff5e856a809a9fc42373d5aec0ce0c4fba1abf5d19ef9043ebb"

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
end
