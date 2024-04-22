cask "acreom" do
  arch arm: "-arm64"

  version "1.19.0"
  sha256 arm:   "f0d7f24dee43d11fbf4efbcf6e502959e4ff82e70e5d1ce2fe1a67a1aed89226",
         intel: "c44b8f55ae907272c053dd6f8190d490be2b427c1e1e73bcfae451cb23b72faa"

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
