cask "osp-tracker" do
  version "6.0.8"
  sha256 "b79b13aa244fb2b3c2edb3154a409ec8c3ab5ffdca8a90288edae84cf0bc8281"

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
