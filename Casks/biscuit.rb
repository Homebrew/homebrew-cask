cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.27"
  sha256 arm:   "b2bd9101f9eec59430db3586387cf5bcd077b06115f244ecdff9de1f4f329ac4",
         intel: "4eff2c48e3ce24af3ffeb814ed46f5a21406516b0c094763f5896e73bc82bd9b"

  url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}#{arch}.dmg",
      verified: "github.com/agata/dl.biscuit/"
  name "Biscuit"
  desc "Browser to organise apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true

  app "Biscuit.app"

  zap trash: [
    "~/Library/Application Support/biscuit",
    "~/Library/Logs/Biscuit",
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
    "~/Library/Saved Application State/com.eatbiscult.biscult.savedState",
  ]
end
