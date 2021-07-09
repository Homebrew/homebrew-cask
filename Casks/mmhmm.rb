cask "mmhmm" do
  version "2.0.0,1622700000"
  sha256 "aff81304dfeddad7def1803d592d6683d30aa252f8e8bb1ddc21ac54e975868a"

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
