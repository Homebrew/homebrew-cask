cask "r-rig-app" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.1"
  sha256 arm:   "65a6cd859b22e8a0bd2a1e99ed8a7cab73460c1ef8b7ac27e4697961dcc1de74",
         intel: "fada7177d6c5aeb66353ade8cdb59f2905cfb982b8de9cdc2179f8220e010e25"

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
