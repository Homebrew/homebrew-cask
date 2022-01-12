cask "mmhmm" do
  version "2.2.2,1639695000"
  sha256 "0a63bf2edf49816f1a7bf1006fb6bf87d2ec3a7a7f5f8d5ea08aa0df8d4264f6"

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
