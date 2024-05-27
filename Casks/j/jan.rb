cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.4.14"
  sha256 arm:   "0d031d02a5fe681d739ffb7498bc36dff1bb54dc6ba56e34af50058b2a831ea6",
         intel: "832174f020a5bb4c44493d95b220267e3949d2ad653bea361cc0aae46485b853"

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
