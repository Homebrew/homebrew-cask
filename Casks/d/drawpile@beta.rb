cask "drawpile@beta" do
  arch arm: "arm64", intel: "x86_64"

  version "2.2.2-beta.3"
  sha256 arm:   "a161834d7dd28e1edebee1c490c3dd02bb82a55167ac192150387e6aa347b4b0",
         intel: "f79327ebc102ca17f536aacee0e0dc3a129df4ec9c2f91096a24a0967c96db7c"

  url "https://github.com/drawpile/Drawpile/releases/download/#{version}/Drawpile-#{version}-#{arch}.dmg",
      verified: "github.com/drawpile/Drawpile/"
  name "Drawpile"
  desc "Collaborative drawing app"
  homepage "https://drawpile.net/"

  livecheck do
    url :url
    regex(/^(\d+(?:\.\d+)+(?:-beta\.\d+)?)$/)
  end

  conflicts_with cask: "drawpile"
  depends_on macos: ">= :big_sur"

  app "Drawpile.app"

  zap trash: [
    "~/Library/Application Support/drawpile",
    "~/Library/Preferences/net.drawpile.drawpile.plist",
    "~/Library/Preferences/net.drawpile.DrawpileClient.plist",
    "~/Library/Saved Application State/net.drawpile.DrawpileClient.savedState",
  ]
end
