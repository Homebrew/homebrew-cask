cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.10"
  sha256 arm:   "f21e0e3e163fbeb1f5f4414b0923071c2c6f45082247ff6c67225c915ddd469a",
         intel: "e7e980de0227f2de1f18912522e24e486c2d021953bcaa06bc51779f5278d073"

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
