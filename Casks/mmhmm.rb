cask "mmhmm" do
  version "2.13.4,1"
  sha256 :no_check

  url "https://updates.mmhmm.app/mac/mmhmm.pkg"
  name "mmhmm"
  desc "Virtual video presentation software"
  homepage "https://www.mmhmm.app/"

  pkg "mmhmm.pkg"

  uninstall pkgutil:   "app.mmhmm.app",
            quit:      "app.mmhmm.app",
            launchctl: "app.mmhmm.Camera.Assistant"
end
