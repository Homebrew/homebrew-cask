cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.4.12"
  sha256 arm:   "9476c22b9a5573951d6c96ae79b41e6c6c0dceaa759850b89251a59f66107a38",
         intel: "a4cbb46b617b195f7267174cac2160c2ee6d25fff72965790774419cdb31015f"

  url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-#{arch}-#{version}.dmg",
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
