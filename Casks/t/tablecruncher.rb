cask "tablecruncher" do
  arch arm: "arm64", intel: "x86_64"

  version "1.7.0"
  sha256 arm:   "11dfed89498a9f30ce323ce16159aa9a24b4665634f4bea293682f40eb07cdab",
         intel: "316ae70fd1b34f9ab59c1bfcde7b0ae3c1a6000c3b0a433ca3b7963d28b1a080"

  url "https://tablecruncher.com/download/Tablecruncher-#{version}-#{arch}.zip"
  name "Tablecruncher"
  desc "Lightweight CSV editor"
  homepage "https://tablecruncher.com/"

  livecheck do
    url "https://tablecruncher.com/download/"
    regex(/href=.*?Tablecruncher[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.zip/i)
  end

  app "Tablecruncher.app"

  zap trash: [
    "~/Library/Preferences/com.tablecruncher",
    "~/Library/Preferences/com.tablecruncher.Tablecruncher.plist",
    "~/Library/Saved Application State/com.tablecruncher.Tablecruncher.savedState",
  ]
end
