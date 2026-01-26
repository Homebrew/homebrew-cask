cask "jan" do
  version "0.7.5"
  sha256 "5d857763e502284b251d10b2097ca993ec02679a8edf35f146edd2b17f4c1b1f"

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

  app "Jan.app"

  zap trash: [
    "~/Library/Application Support/Jan",
    "~/Library/Preferences/jan.ai.app.plist",
    "~/Library/Saved Application State/jan.ai.app.savedState",
  ]
end
