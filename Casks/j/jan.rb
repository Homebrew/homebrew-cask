cask "jan" do
  version "0.5.15"
  sha256 "389e4645310b525fd745eb89d9cbc8727624d606394631e3dbbcf109cc305986"

  url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-universal-#{version}.dmg",
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
