cask "osp-tracker" do
  version "6.3.5"
  sha256 "b43fae20b5acd01b9f8f1c1dba1a5a7958cbd67e2b7a132432bc4d01fbc471b0"

  url "https://www.compadre.org/osp/images/tracker/Tracker-#{version}-osx-installer.dmg",
      verified: "compadre.org/osp/images/tracker/"
  name "Tracker"
  desc "Video analysis and modelling tool for physics education"
  homepage "https://opensourcephysics.github.io/tracker-website/"

  livecheck do
    url :homepage
    regex(/href=.*?Tracker[._-]v?(\d+(?:\.\d+)+)[._-]osx[._-]installer\.dmg/i)
  end

  depends_on :macos

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
