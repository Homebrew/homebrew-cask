cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.1.6"
  sha256 arm:   "f49ce9c453d51404d0cfd997701b0ece64ec283e2c3cdc5d7426a37f0b80d52f",
         intel: "df4e2e8bf54758fed47acc603585c8738f8ff676b53ea9c5b309c0a9d49ee042"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/releases/darwin/latest-mac.yml"
    strategy :electron_builder
  end

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
