cask "pd" do
  version "0.54-0"
  sha256 "0c1d2bc12756df253f8152163f1493deb7ce48382d4f7357ecbe0c260be4db04"

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
