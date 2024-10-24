cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.5.7"
  sha256 arm:   "b19b203ad0adf8d7a38cdf0cdb31f6c42138fde7ee341d44ff6c7eb3825b5485",
         intel: "a0077eac829d033efa9be44b8300ad0dace0a2becf1c1e78b7d0278688a2d6c0"

  url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-#{arch}-#{version}.dmg",
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
