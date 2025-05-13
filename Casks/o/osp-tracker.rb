cask "osp-tracker" do
  version "6.3.1"
  sha256 "f6454c04191a77df9e517f521f693a634c7e7f4e93b1f7aa173d09bffbc9d486"

  url "https://physlets.org/tracker/installers/Tracker-#{version}-osx-installer.dmg",
      verified: "physlets.org/tracker/installers/"
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
