cask "lofi" do
  version "2.0.1"
  sha256 "bbda90e7b588b7dfaaceb30751819cbc8982faa618ae0dcd0e7f8b228a2fa068"

  url "https://github.com/dvx/lofi/releases/download/v#{version}/lofi.dmg",
      verified: "github.com/dvx/lofi/"
  name "Lofi"
  desc "Spotify player with WebGL visualizations"
  homepage "https://www.lofi.rocks/"

  app "lofi.app"

  zap trash: [
    "~/Library/Application Support/lofi",
    "~/Library/Preferences/lofi.rocks.plist",
    "~/Library/Saved Application State/lofi.rocks.savedState",
  ]
end
