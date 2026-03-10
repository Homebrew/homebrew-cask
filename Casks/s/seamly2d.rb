cask "seamly2d" do
  version "2026.3.9.214"
  sha256 "e5655c427b950a94e6b01c2add5fb980661c6acaa6c5cf7472a613d3eb68e211"

  url "https://github.com/FashionFreedom/Seamly2D/releases/download/v#{version}/Seamly2D-macos.zip",
      verified: "github.com/FashionFreedom/Seamly2D/"
  name "Seamly2D"
  desc "Pattern making software"
  homepage "https://seamly.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"
  container nested: "Seamly2D.dmg"

  app "Seamly2D.app"

  zap trash: [
    "~/.config/Seamly2DTeam",
    "~/Library/Application Support/Seamly2D",
    "~/Library/Preferences/org.seamly2dproject.Seamly2D.plist",
    "~/Library/Saved Application State/org.seamly2dproject.Seamly2D.savedState",
  ]
end
