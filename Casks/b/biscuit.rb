cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.31"
  sha256 arm:   "8d427d13789e3505836611586fdaf77f8091d66ba07ec0f4140e344993fcfed2",
         intel: "cd7ea5bbf4d4847aa072b752e745b3f8fb18ded401d635b5ff93879ce438adcf"

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
