cask "fishing-funds" do
  arch arm: "-arm64"

  version "7.0.2"
  sha256 arm:   "4415c8ae721fbc45309a6a45f3a2758461a7d69541496bf80c81d07919914d17",
         intel: "c1f1bf66acd65586b7bfbadf1dfa55c16fa3df3186a9902f88d7aa9c3bdce88b"

  url "https://github.com/1zilc/fishing-funds/releases/download/v#{version}/Fishing-Funds-#{version}#{arch}.dmg",
      verified: "github.com/1zilc/fishing-funds/"
  name "Fishing Funds"
  desc "Display real-time trends of Chinese funds in the menubar"
  homepage "https://ff.1zilc.top/"

  app "Fishing Funds.app"

  zap trash: [
    "~/Library/Application Support/Fishing Funds",
    "~/Library/Logs/Fishing Funds",
    "~/Library/Preferences/com.electron.1zilc.fishing-funds.plist",
  ]
end
