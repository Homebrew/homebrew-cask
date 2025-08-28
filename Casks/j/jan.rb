cask "jan" do
  version "0.6.9"
  sha256 "0f188340429f02a0aee676615b6043ff50a18429ee28f8b881c10af3eea32b66"

  url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-universal-#{version}.zip",
      verified: "github.com/janhq/jan/"
  name "Jan"
  desc "Offline AI chat tool"
  homepage "https://jan.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Jan.app"

  zap trash: [
    "~/Library/Application Support/Jan",
    "~/Library/Preferences/jan.ai.app.plist",
    "~/Library/Saved Application State/jan.ai.app.savedState",
  ]
end
