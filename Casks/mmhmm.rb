cask "mmhmm" do
  version "1.1.1,1611102000"
  sha256 "e01f31c7d8708519d33012c1b1206bc9c604754aa413bf81f5a4649b76ac1466"

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
