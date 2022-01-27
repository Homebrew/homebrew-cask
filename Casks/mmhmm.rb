cask "mmhmm" do
  version "2.2.3,1642040000"
  sha256 "00a80b03bf3cb9774818cc473835ccc8475a8757f32116827b53be4911e99406"

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
