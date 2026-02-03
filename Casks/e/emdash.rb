cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "465d9a9692ac5e97cde64dd09866ea3df456eda70739a13ec85b6319733355a5",
         intel: "b012726b1eceda6a261f694ba43c9f8b950994e13b53e20367b86766d88ba835"

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
