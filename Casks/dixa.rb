cask "dixa" do
  version "4.0.11"
  sha256 "03ffbb1596a2d4c062107b8f3bfe62778dbb74bcc3985cd37522495cd4c2864d"

  url "https://github.com/dixahq/dixa-desktop-app-release/releases/download/v#{version}/dixa-#{version}.dmg",
      verified: "github.com/dixahq/dixa-desktop-app-release/"
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
