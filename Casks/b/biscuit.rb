cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.29"
  sha256 arm:   "75a92e65c7cc8be6296abf6e85dc4feb5c8314df4e0971cd4ab24549eef445ed",
         intel: "a869a9907fb8da48372a4da2b300a5660b6e11bf460d473821ca0a3b096eb4ea"

  url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}#{arch}.dmg",
      verified: "github.com/agata/dl.biscuit/"
  name "Biscuit"
  desc "Browser to organise apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Biscuit.app"

  zap trash: [
    "~/Library/Application Support/biscuit",
    "~/Library/Logs/Biscuit",
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
    "~/Library/Saved Application State/com.eatbiscult.biscult.savedState",
  ]
end
