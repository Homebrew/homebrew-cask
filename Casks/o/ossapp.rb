cask "ossapp" do
  arch arm: "-arm64"

  version "0.3.5"
  sha256 arm:   "c8a4b3d9b11d6e2e04b2e2161d28af8695aa7fc7fa25d27ec2fdb2d71c5220aa",
         intel: "5a20d73f29d8b05c12c90cc7689efe771059d8129c9dbbcd58b8ba45523c2d1c"

  url "https://gui.pkgx.dev/release/ossapp-#{version}#{arch}-mac.zip",
      verified: "gui.pkgx.dev/release"
  name "pkgx"
  desc "Unified package manager"
  homepage "https://pkgx.app/"

  livecheck do
    url "https://gui.pkgx.dev/release/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "ossapp.app"

  zap trash: [
    "~/.pkgx", # Also used by CLI
    "~/.tea", # Also used by CLI
    "~/Library/Application Support/ossapp",
    "~/Library/Application Support/pkgx",
    "~/Library/Application Support/tea",
    "~/Library/Caches/pkgx",
    "~/Library/Caches/xyz.tea.gui",
    "~/Library/Caches/xyz.tea.gui.ShipIt",
    "~/Library/Logs/ossapp",
    "~/Library/Logs/tea",
    "~/Library/Preferences/xyz.tea.gui.plist",
    "~/Library/Saved Application State/xyz.tea.gui.savedState",
  ]
end
