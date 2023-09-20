cask "gossip" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.0"
  sha256 arm:   "3b589bbf7357904142922270991748c10e380335124df31434058c416cfc168c",
         intel: "f661810442773c816f2eb1d05ec276a3e443a3d0f4e459d9d7715b88d75f8f41"

  url "https://github.com/mikedilger/gossip/releases/download/v#{version}/gossip-#{version}-Darwin-#{arch}.dmg"
  name "Gossip"
  desc "Desktop client for Nostr written in Rust"
  homepage "https://github.com/mikedilger/gossip"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Gossip.app"

  zap trash: [
    "~/Library/Application Support/gossip",
    "~/Library/Saved Application State/com.mikedilger.gossip.savedState",
  ]

  caveats <<~EOS
    This app may not run with quarantine attributes typically applied by macOS
    security policy. If you're sure you want to trust the app, you can reinstall
    without quarantine attributes:

      brew reinstall --cask --no-quarantine #{token}

    https://docs.brew.sh/FAQ#why-cant-i-open-a-mac-app-from-an-unidentified-developer
    https://github.com/mikedilger/gossip/blob/master/packaging/macos/README.macos.txt
  EOS
end
