cask "tea" do
  arch arm: "-arm64"

  version "0.2.48"
  sha256 arm:   "74453fd84eacf13244539d816853254b0a0ab471dda5f69ea40da229c9b84b9a",
         intel: "7a3571bb55a63c49acffc29934eac5b35e4e4948a27cb9606891ab3d46a49ae5"

  url "https://gui.tea.xyz/release/tea-#{version}#{arch}-mac.zip"
  name "tea"
  desc "Unified package manager"
  homepage "https://tea.xyz/gui/"

  livecheck do
    url "https://gui.tea.xyz/release/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "tea.app"

  zap trash: [
    "~/.tea", # Also used by CLI
    "~/Library/Application Support/tea",
    "~/Library/Caches/xyz.tea.gui",
    "~/Library/Caches/xyz.tea.gui.ShipIt",
    "~/Library/Logs/tea",
    "~/Library/Preferences/xyz.tea.gui.plist",
    "~/Library/Saved Application State/xyz.tea.gui.savedState",
  ]
end
