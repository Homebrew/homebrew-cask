cask "biscuit" do
  arch arm: "-arm64"

  version "2.1.1"
  sha256 arm:   "998dcc9785aea8161b6740398a460cb7a0d3d6d8c627728a14ee885dbb946c3e",
         intel: "8dffe8207ac9056d3c3762d0703c81bb185e68402535ebfbcf982d0638441f15"

  url "https://github.com/agata/dl.biscuit/releases/download/#{version}/Biscuit-#{version}#{arch}.dmg",
      verified: "github.com/agata/dl.biscuit/"
  name "Biscuit"
  desc "Browser to organise apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true
  depends_on macos: :monterey

  app "Biscuit.app"

  zap trash: [
    "~/Library/Application Support/biscuit",
    "~/Library/Logs/Biscuit",
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
    "~/Library/Saved Application State/com.eatbiscult.biscult.savedState",
  ]
end
