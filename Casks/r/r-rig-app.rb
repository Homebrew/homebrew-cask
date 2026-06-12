cask "r-rig-app" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.0"
  sha256 arm:   "9504c7b3f3fdd364c92462115003ec48c36f39425e823b3076b8c1dfe4f11638",
         intel: "ef11eae03c6262bf904842327fc97c2d8321652c01c25d0c2b5167f408c42d0a"

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
