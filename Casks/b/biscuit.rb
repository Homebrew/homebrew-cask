cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.30"
  sha256 arm:   "0545a92dce24a2a5758250ddd3b8e58a26b1219ca61fd316872adbc154eb27bf",
         intel: "c3ab3a00589046167bce909eb7fc9d080c6a2205e312890b36ba568f0358881d"

  url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}#{arch}.dmg",
      verified: "github.com/agata/dl.biscuit/"
  name "Biscuit"
  desc "Browser to organise apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Biscuit.app"

  zap trash: [
    "~/Library/Application Support/biscuit",
    "~/Library/Logs/Biscuit",
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
    "~/Library/Saved Application State/com.eatbiscult.biscult.savedState",
  ]
end
