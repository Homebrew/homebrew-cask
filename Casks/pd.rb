cask "pd" do
  version "0.53-2"
  sha256 "fb213d232e626601069096bc668e5c526a162b8f752e219ab8a813fb7d04bd83"

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
