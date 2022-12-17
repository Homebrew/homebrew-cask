cask "dixa" do
  version "4.0.10"
  sha256 "f596b5f2d8ce2a246ae1231830274f309521cdd6b9f45e7daa312218576a5203"

  url "https://github.com/dixahq/dixa-desktop-app-release/releases/download/v#{version}/dixa-#{version}.dmg",
      verified: "github.com/dixahq/dixa-desktop-app-release"
  name "Dixa"
  desc "Customer service platform"
  homepage "https://dixa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dixa.app"

  zap trash: [
    "~/Library/Application Support/Dixa",
    "~/Library/Logs/Dixa",
    "~/Library/Preferences/dixa.plist",
    "~/Library/Saved Application State/dixa.savedState",
  ]
end
