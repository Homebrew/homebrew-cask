cask "seamly2d" do
  version "2026.10.20.1823"
  sha256 "949fc9d0396007296a0fb003ca8463a5509f9eae6ce290339a7f511ca07983fb"

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
