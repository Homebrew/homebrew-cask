cask "bdash" do
  version "1.31.0"
  sha256 "a0a5b7591cc46bb1d35bdcc9c376bc91f4dbe36db052c0aca8eea2685d247286"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-universal-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Bdash.app"

  zap trash: [
    "~/.bdash",
    "~/Library/Application Support/Bdash",
    "~/Library/Logs/Bdash",
    "~/Library/Preferences/io.bdash.plist",
    "~/Library/Saved Application State/io.bdash.savedState",
  ]
end
