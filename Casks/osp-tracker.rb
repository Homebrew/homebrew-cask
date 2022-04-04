cask "osp-tracker" do
  version "6.0.7"
  sha256 "df0e0ccd2e2631fee0dc4c6863a7b015215c05eb620a9d913958f8cb8ac68ebe"

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
