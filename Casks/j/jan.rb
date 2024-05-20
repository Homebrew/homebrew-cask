cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.4.13"
  sha256 arm:   "8c37f49820bed51bcd99b8b321f3261d348e0aa9a5cd4297849578e0c140f7d9",
         intel: "79172154f93f0f63bcc44b4f79d5139ba45444f83e45a79913c552d4188728f6"

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
