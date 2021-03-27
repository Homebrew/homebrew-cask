cask "mmhmm" do
  version "1.3.0,1615446000"
  sha256 "9404960fb201b1086348dded3f8332dfa5664637b101dd5a4d948621b6a78e0d"

  url "https://updates.mmhmm.app/mac/production/mmhmm_#{version.before_comma}.zip"
  name "mmhmm"
  desc "Virtual video presentation software"
  homepage "https://www.mmhmm.app/"

  livecheck do
    url "https://updates.mmhmm.app/mac/production/sparkle.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "mmhmm.app"

  uninstall pkgutil:   "app.mmhmm.app",
            quit:      "app.mmhmm.app",
            launchctl: "app.mmhmm.Camera.Assistant"
end
