cask "seamly2d" do
  version "2026.7.13.214"
  sha256 "5fafae4d3b008f23f9c37d3f4ded7fe2e2b07a64a1de1f719ec18bb0aa572426"

  url "https://github.com/FashionFreedom/Seamly2D/releases/download/v#{version}/Seamly2D-macos.zip",
      verified: "github.com/FashionFreedom/Seamly2D/"
  name "Seamly2D"
  desc "Pattern making software"
  homepage "https://seamly.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey
  container nested: "Seamly2D.dmg"

  app "Seamly2D.app"

  zap trash: [
    "~/.config/Seamly2DTeam",
    "~/Library/Application Support/Seamly2D",
    "~/Library/Preferences/org.seamly2dproject.Seamly2D.plist",
    "~/Library/Saved Application State/org.seamly2dproject.Seamly2D.savedState",
  ]
end
