cask "pd" do
  version "0.52-2"
  sha256 "06d2cb0f0126170f53675eb1b17d0fd9e95acdcce6d7d881a4135b746bb20533"

  url "http://msp.ucsd.edu/Software/pd-#{version}.macos.zip"
  name "Pd"
  desc "Visual programming language for multimedia"
  homepage "http://msp.ucsd.edu/software.html"

  livecheck do
    url :homepage
    regex(/pd[._-]v?(\d+(?:\.\d+)+-\d+)\.macos\.zip/i)
  end

  app "Pd-#{version}.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}.app", "u+w"
  end

  zap trash: [
    "~/Library/Preferences/org.puredata.pd.pd-gui.plist",
    "~/Library/Saved Application State/org.puredata.pd.pd-gui.savedState",
  ]
end
