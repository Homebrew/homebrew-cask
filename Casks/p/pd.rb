cask "pd" do
  version "0.57-0"
  sha256 "1025273983272911841e657b2e51f83c160e3b83bb476342a2e75ff62ce133a4"

  url "https://msp.ucsd.edu/Software/pd-#{version}.macos.zip"
  name "Pd"
  desc "Visual programming language for multimedia"
  homepage "https://msp.ucsd.edu/software.html"

  livecheck do
    url :homepage
    regex(/pd[._-]v?(\d+(?:\.\d+)+-\d+)\.macos\.zip/i)
  end

  depends_on :macos

  app "Pd-#{version}.app"

  postflight_steps do
    set_permissions "Pd-{{version}}.app", "u+w", base: :appdir
  end

  zap trash: [
    "~/Library/Preferences/org.puredata.pd.pd-gui.plist",
    "~/Library/Saved Application State/org.puredata.pd.pd-gui.savedState",
  ]
end
