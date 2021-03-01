cask "mmhmm" do
  version "1.2.0,1614237000"
  sha256 "6396c80feda382a5b2a43290e59f767782a1a0598de0bf201712ecbf0cfc841b"

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
