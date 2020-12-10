cask "mmhmm" do
  version "1.0.2"
  sha256 "e1df9eb8dcfa9bc1f058fc5a2501c557f71b57bc9402aa3f9e707e855fde358b"

  url "https://updates.mmhmm.app/mac/production/mmhmm_#{version}.zip"
  appcast "https://updates.mmhmm.app/mac/production/sparkle.xml"
  name "mmhmm"
  desc "Virtual video presentation software"
  homepage "https://www.mmhmm.app/"

  app "mmhmm.app"

  uninstall pkgutil:   "app.mmhmm.app",
            quit:      "app.mmhmm.app",
            launchctl: "app.mmhmm.Camera.Assistant"
end
