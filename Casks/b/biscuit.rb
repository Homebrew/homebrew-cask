cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.36"
  sha256 arm:   "23e4d747d8f53d7fed9168d6188b980dc87658c37367c79249bdd4f556e6d81f",
         intel: "ba32802300f6555889061ff51cd0f3f061eb7d48f3238fef74e3d8c3864526ce"

  url "https://github.com/agata/dl.biscuit/releases/download/#{version}/Biscuit-#{version}#{arch}.dmg",
      verified: "github.com/agata/dl.biscuit/"
  name "Biscuit"
  desc "Browser to organise apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Biscuit.app"

  zap trash: [
    "~/Library/Application Support/biscuit",
    "~/Library/Logs/Biscuit",
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
    "~/Library/Saved Application State/com.eatbiscult.biscult.savedState",
  ]
end
