cask "duckstation" do
  version :latest
  sha256 :no_check

  url "https://github.com/stenzek/duckstation/releases/download/latest/duckstation-mac-release.zip"
  name "DuckStation"
  desc "PlayStation 1 emulator"
  homepage "https://github.com/stenzek/duckstation"

  app "DuckStation.app"

  zap trash: [
    "~/Library/Application Support/DuckStation",
    "~/Library/Preferences/com.github.stenzek.duckstation.plist",
    "~/Library/Saved Application State/com.github.stenzek.duckstation.savedState",
  ]
end
