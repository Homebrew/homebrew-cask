cask "jan" do
  version "0.7.7"
  sha256 "7fdd69e81e9be9db530b3883b6f698eee8008ea8435e40e4b7006174f917c141"

  url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-universal-#{version}.zip",
      verified: "github.com/janhq/jan/"
  name "Jan"
  desc "Offline AI chat tool"
  homepage "https://jan.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Jan.app"

  zap trash: [
    "~/Library/Application Support/Jan",
    "~/Library/Preferences/jan.ai.app.plist",
    "~/Library/Saved Application State/jan.ai.app.savedState",
  ]
end
