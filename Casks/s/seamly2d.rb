cask "seamly2d" do
  version "2026.11.23.131"
  sha256 "8f5b75d8a9784522323ab4d5d629b3a9fb60006ccadd02fa710c2c569a8d1bb2"

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
