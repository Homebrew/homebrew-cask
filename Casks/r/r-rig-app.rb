cask "r-rig-app" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.0"
  sha256 arm:   "73158cec8513180abbc83dc062e8c0e165443ba926297fb0901f012259b6f526",
         intel: "fcd418eaba5a39c213fe608a88c182b6cdda5de37be45bec1950870593003c01"

  url "https://github.com/r-lib/rig/releases/download/v#{version}/rig-#{version}-macOS-#{arch}.pkg"
  name "r-rig-app"
  desc "R Installation Manager"
  homepage "https://github.com/r-lib/rig"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "rig-#{version}-macOS-#{arch}.pkg"

  uninstall pkgutil: "com.gaborcsardi.rig"

  # No zap stanza required
end
