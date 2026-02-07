cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "d0b866526753c4203ad172d71e5449a730e89d8ea4e284a630f0bc8e61f5f1ca",
         intel: "8d21b5f5bb0aae5b1e930add456452b47ab60f73f931401f0454a13c64000769"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  depends_on macos: ">= :big_sur"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
