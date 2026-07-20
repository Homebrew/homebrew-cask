cask "pd" do
  version "0.56-5"
  sha256 "e524e8d0c714399c699c6c02445215a408b2202c427b66e7866577310d6dab82"

  url "https://msp.ucsd.edu/Software/pd-#{version}.macos.zip"
  name "Pd"
  desc "Visual programming language for multimedia"
  homepage "https://msp.ucsd.edu/software.html"

  livecheck do
    url :homepage
    regex(/pd[._-]v?(\d+(?:\.\d+)+-\d+)\.macos\.zip/i)
  end

  depends_on macos: :big_sur

  app "Pd-#{version}.app"

  postflight_steps do
    set_permissions "Pd-#{version}.app", "u+w", base: :appdir
  end

  zap trash: [
    "~/Library/Preferences/org.puredata.pd.pd-gui.plist",
    "~/Library/Saved Application State/org.puredata.pd.pd-gui.savedState",
  ]
end
