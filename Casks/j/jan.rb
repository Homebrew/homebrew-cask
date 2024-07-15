cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "fc8acc5e9ef78f276c34db5e3547ca8d573de0d9c7b283801a9f2b586e263839",
         intel: "5509109bf41bb5d3829cd7fb3187c8c9582e056c3dbae8cf3e591fbcf83a1d32"

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
