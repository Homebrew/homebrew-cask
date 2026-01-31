cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.1.5"
  sha256 arm:   "b67f56b4266155fc1a47191b971a3d5897718f6cb583e1db7a28294418d9bb2f",
         intel: "f2807f266247adf278d1387ffd338cfff8241f485eb0618f3f797fd39a1b7bfd"

  url "https://github.com/rmcrackan/Libation/releases/download/v#{version}/Libation.#{version}-macOS-chardonnay-#{arch}.dmg"
  name "Libation"
  desc "Audible audiobook manager"
  homepage "https://github.com/rmcrackan/Libation"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Libation.app"

  zap trash: [
    "~/Library/Application Support/Libation",
    "~/Library/Caches/Libation",
    "~/Library/Preferences/com.libation.plist",
    "~/Library/Saved Application State/com.libation.savedState",
  ]
end
