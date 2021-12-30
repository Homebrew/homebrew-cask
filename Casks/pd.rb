cask "pd" do
  version "0.51-4"
  sha256 "2dd4c637d8637eefc928e7a06586cb911a21eae72f1abb3a0649a90f7eff20f7"

  url "http://msp.ucsd.edu/Software/pd-#{version}.mac.tar.gz"
  name "Pd"
  desc "Visual programming language for multimedia"
  homepage "http://msp.ucsd.edu/software.html"

  livecheck do
    url "http://msp.ucsd.edu/software.html"
    strategy :page_match
    regex(%r{href=.*?/pd-(\d+(?:\.\d+)*-\d+)\.mac\.tar\.gz}i)
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
