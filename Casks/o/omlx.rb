cask "omlx" do
  version "0.4.1"
  sha256 "dbca24ad8382707c5e413cf6e50c8e9cf328d5732d868de4621a158b72c4c593"

  url "https://github.com/jundot/omlx/releases/download/v#{version}/oMLX-#{version}-macos26-tahoe.dmg",
      verified: "github.com/jundot/omlx/"
  name "oMLX"
  desc "MLX inference server for Apple Silicon"
  homepage "https://omlx.ai/"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "oMLX.app"

  zap trash: [
    "~/Library/Application Support/app.omlx",
    "~/Library/Caches/app.omlx",
    "~/Library/HTTPStorages/app.omlx",
    "~/Library/Preferences/app.omlx.plist",
    "~/Library/Saved Application State/app.omlx.savedState",
  ]
end
