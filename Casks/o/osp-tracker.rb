cask "osp-tracker" do
  version "6.3.3"
  sha256 "fbd43076ffca63ee6691b9ef175cc792b939d2e2182dd597bc2389a367f8e228"

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
