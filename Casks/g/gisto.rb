cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.3"
  sha256 arm:   "e04afbdbecdc5a02dace5d2aa7be6c3a9e6ca5d4b3644d92d12623098c94eda6",
         intel: "e0926c1d7588aeceaa011b2426f4bcaf96dc5f7b9fbad093d9ebc5a91e131f0a"

  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto_#{version}_#{arch}.dmg",
      verified: "github.com/Gisto/Gisto/"
  name "Gisto"
  desc "Snippets management desktop application"
  homepage "https://www.gisto.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Gisto.app"

  zap trash: [
    "~/Library/Application Support/Gisto",
    "~/Library/Caches/com.gistoapp.gisto2",
    "~/Library/Logs/Gisto",
    "~/Library/Preferences/com.gistoapp.gisto2.helper.plist",
    "~/Library/Preferences/com.gistoapp.gisto2.plist",
    "~/Library/Saved Application State/com.gistoapp.gisto2.savedState",
  ]
end
