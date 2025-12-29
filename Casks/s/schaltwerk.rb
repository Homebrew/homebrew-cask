cask "schaltwerk" do
  version "0.10.1"
  sha256 "82d550e2d2c4a181cffd2411b8c69db386d508e0bc2d06846be90803317320c0"

  url "https://github.com/2mawi2/schaltwerk/releases/download/v#{version}/Schaltwerk-#{version}-universal.dmg",
      verified: "github.com/2mawi2/schaltwerk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  name "Schaltwerk"
  desc "IDE without editor - manage AI coding sessions in isolated git worktrees"
  homepage "https://github.com/2mawi2/schaltwerk"

  depends_on macos: ">= :big_sur"

  app "Schaltwerk.app"

  zap trash: [
    "~/Library/Application Support/schaltwerk",
    "~/Library/Logs/schaltwerk",
    "~/Library/Preferences/com.mariuswichtner.schaltwerk.plist",
    "~/Library/Saved Application State/com.mariuswichtner.schaltwerk.savedState",
  ]
end
