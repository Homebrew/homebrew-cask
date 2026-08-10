cask "seamly2d" do
  version "2026.8.10.212"
  sha256 "918c1f0aea5fd637f5a22255e445b9b0ed65f792fa6c310ac2b93599cf1d364b"

  url "https://github.com/FashionFreedom/Seamly2D/releases/download/v#{version}/Seamly2D-macos.zip",
      verified: "github.com/FashionFreedom/Seamly2D/"
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

  zap trash: [
    "~/.config/Seamly2DTeam",
    "~/Library/Application Support/Seamly2D",
    "~/Library/Preferences/org.seamly2dproject.Seamly2D.plist",
    "~/Library/Saved Application State/org.seamly2dproject.Seamly2D.savedState",
  ]
end
