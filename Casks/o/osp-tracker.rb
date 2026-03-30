cask "osp-tracker" do
  version "6.3.4"
  sha256 "6cbb7e26db6f7fb38315383f09755181fa685a110a5942db35179b9e59a1d5d2"

  url "https://www.compadre.org/osp/images/tracker/Tracker-#{version}-osx-installer.dmg",
      verified: "compadre.org/osp/images/tracker/"
  name "Tracker"
  desc "Video analysis and modelling tool for physics education"
  homepage "https://opensourcephysics.github.io/tracker-website/"

  livecheck do
    url :homepage
    regex(/href=.*?Tracker[._-]v?(\d+(?:\.\d+)+)[._-]osx[._-]installer\.dmg/i)
  end

  installer script: {
    executable: "Tracker-#{version}-osx-installer.app/Contents/MacOS/osx-x86_64",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/usr/local/tracker/uninstall_Tracker.app/Contents/MacOS/osx-x86_64",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  zap trash: "~/Library/Saved Application State/org.opensourcephysics.cabrillo.tracker.savedState"

  caveats do
    requires_rosetta
  end
end
