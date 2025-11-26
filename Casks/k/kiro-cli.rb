cask "kiro-cli" do
  version "1.20.2"
  sha256 "4eec55f8a9b19521e2033b7ecf704ce00af2f931c0c4b4141e85c2138af18e49"

  url "https://desktop-release.q.us-east-1.amazonaws.com/#{version}/Kiro%20CLI.dmg",
      verified: "desktop-release.q.us-east-1.amazonaws.com/"
  name "Kiro CLI"
  desc "AI-powered productivity tool for the command-line"
  homepage "https://kiro.dev/docs/cli/"

  livecheck do
    url "https://desktop-release.q.us-east-1.amazonaws.com/latest/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Kiro CLI.app"

  zap trash: [
    "~/.kiro",
    "~/.local/bin/kiro-cli",
    "~/.local/bin/kiro-cli-chat",
    "~/Library/Application Support/kiro-cli",
    "~/Library/Caches/dev.kiro.cli",
    "~/Library/Preferences/dev.kiro.cli.plist",
  ]
end
