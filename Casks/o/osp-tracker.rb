cask "osp-tracker" do
  on_arm do
    version "6.2.0"
    sha256 "04a3041b0a628b8241aaa8f3a40d3545927c017f835a955827397c0352bf6ceb"

    livecheck do
      skip "Legacy version"
    end
  end
  on_intel do
    version "6.3.0"
    sha256 "375eeaf93a9cfb437e54a5063d5722463dc8aa9818648f5fdc2344c797c45ce9"

    livecheck do
      url :homepage
      regex(/href=.*?Tracker[._-]v?(\d+(?:\.\d+)+)[._-]osx[._-]installer\.dmg/i)
    end
  end

  url "https://physlets.org/tracker/installers/Tracker-#{version}-osx-installer.dmg",
      verified: "physlets.org/tracker/installers/"
  name "Tracker"
  desc "Video analysis and modelling tool for physics education"
  homepage "https://opensourcephysics.github.io/tracker-website/"

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
