cask "mmhmm" do
  version "2.1.1,1633649000"
  sha256 "fb388e3d44166ea229057326c110decab52d8e257c944ad342a9eb6cb6ad576f"

  url "https://updates.mmhmm.app/mac/production/mmhmm_#{version.before_comma}.zip"
  name "mmhmm"
  desc "Virtual video presentation software"
  homepage "https://www.mmhmm.app/"

  livecheck do
    url "https://updates.mmhmm.app/mac/production/sparkle.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "mmhmm.app"

  uninstall pkgutil:   "app.mmhmm.app",
            quit:      "app.mmhmm.app",
            launchctl: "app.mmhmm.Camera.Assistant"
end
