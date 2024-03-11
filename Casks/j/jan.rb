cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.4.8"
  sha256 arm:   "97b3e9dbb7026eeb8b8be20cc058ae79312344a6e5cc4b9e31fd5a55ca29695d",
         intel: "0765b25d0fd2a61b7cc4c2ff5bc1e8f39b3fc2248a42d3a4d1073bfe7ca6770f"

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
