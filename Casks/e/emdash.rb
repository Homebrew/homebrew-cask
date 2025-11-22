cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.31"
  sha256 arm:   "53357f3efe26c671692c66044b76f247a2bccd1d65868fd2e154a162c16b686d",
         intel: "cb1d9c624b7de1c154cc9deca6d93a50112611bfde64411367aea6cc65bad86b"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
