cask "acreom" do
  arch arm: "-arm64"

  version "1.16.1"
  sha256 arm:   "58552714ecde16d1ba7e7c7c8f8e920f661acbf1f3f13cac4c69bf703df68c89",
         intel: "ba39ae0ef5323258bf593ddf2f0778aa413b3f7bc1ecb4fad8f90932f1e26e0d"

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
