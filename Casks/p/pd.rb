cask "pd" do
  version "0.55-2"
  sha256 "7656edc222cdfabff2354d427f89e9e60ab1367a28785a21a411718fd2be1e6b"

  url "https://msp.ucsd.edu/Software/pd-#{version}.macos.zip"
  name "Pd"
  desc "Visual programming language for multimedia"
  homepage "https://msp.ucsd.edu/software.html"

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
