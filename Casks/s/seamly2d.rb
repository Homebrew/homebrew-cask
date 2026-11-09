cask "seamly2d" do
  version "2026.11.9.131"
  sha256 "14fbfe91297ec331a304439c94e664284a974511495db39c005be69058bea7d5"

  url "https://github.com/FashionFreedom/Seamly2D/releases/download/v#{version}/Seamly2D-macos.zip"
  name "Seamly2D"
  desc "Pattern making software"
  homepage "https://seamly.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  container nested: "Seamly2D.dmg"

  app "Seamly2D.app"

  uninstall quit: "org.seamly2dproject.Seamly2D"

  zap trash: [
    "~/.config/Seamly2DTeam",
    "~/Library/Application Support/Seamly2D",
    "~/Library/Preferences/org.seamly2dproject.Seamly2D.plist",
    "~/Library/Saved Application State/org.seamly2dproject.Seamly2D.savedState",
  ]
end
