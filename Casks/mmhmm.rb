cask "mmhmm" do
  version "2.3.2,1657772000"
  sha256 "6406870a1cc08046c0e69220b37f390f535c32b7041d3544ac37a6127a5fd734"

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
