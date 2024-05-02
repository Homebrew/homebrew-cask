cask "acreom" do
  arch arm: "-arm64"

  version "1.20.1"
  sha256 arm:   "5b8df0a3e3fc149f3d954733e2544f0e54e6cc1e3c0c413a0e6f14f3400780cb",
         intel: "8ba63c0321f8c6a62f57d9800ca60e39122cd1680fdcbdb370a33ebe2e6d6cc9"

  url "https://github.com/Acreom/releases/releases/download/v#{version}/acreom-#{version}#{arch}.dmg",
      verified: "github.com/Acreom/releases/"
  name "acreom"
  desc "Personal knowledge base for developers"
  homepage "https://acreom.com/"

  depends_on macos: ">= :high_sierra"

  app "acreom.app"

  zap trash: [
    "~/Library/Application Support/acreom",
    "~/Library/Logs/acreom",
    "~/Library/Preferences/com.acreom.acreom-desktop.plist",
    "~/Library/Saved Application State/com.acreom.acreom-desktop.savedState",
  ]
end
