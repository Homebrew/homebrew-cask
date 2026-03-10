cask "bdash" do
  version "1.33.0"
  sha256 "dc1a9ea9761decd3dfc7f3c18c65af429e4f5644b404b75694f87674618394b1"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-universal-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Bdash.app"

  zap trash: [
    "~/.bdash",
    "~/Library/Application Support/Bdash",
    "~/Library/Logs/Bdash",
    "~/Library/Preferences/io.bdash.plist",
    "~/Library/Saved Application State/io.bdash.savedState",
  ]
end
