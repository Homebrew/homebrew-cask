cask "acreom" do
  arch arm: "-arm64"

  version "1.15.15"
  sha256 arm:   "90a218ef1f6003fb7ad2b27760b355fae402056cec3482e312617e06e9c64c1d",
         intel: "09e87022ed16336adaeaf695cd89d18d49383382a56ec5b363a1fbcfc5abd3a5"

  url "https://github.com/Acreom/releases/releases/download/v#{version}/acreom-#{version}#{arch}.dmg",
      verified: "github.com/Acreom/releases/"
  name "acreom"
  desc "Personal knowledge base for developers"
  homepage "https://acreom.com/"

  app "acreom.app"

  zap trash: [
    "~/Library/Application Support/acreom",
    "~/Library/Logs/acreom",
    "~/Library/Preferences/com.acreom.acreom-desktop.plist",
    "~/Library/Saved Application State/com.acreom.acreom-desktop.savedState",
  ]
end
