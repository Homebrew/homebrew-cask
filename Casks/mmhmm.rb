cask "mmhmm" do
  version "2.2.4,1643358000"
  sha256 "926c523dff83062fecb47315749d0ec69247db3db157b9ae919542b6a5b5f988"

  url "https://updates.mmhmm.app/mac/production/mmhmm_#{version.csv.first}.zip"
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
