cask "bdash" do
  version "1.35.0"
  sha256 "e8676ad4420a727590fea4db1c4e49393e18abad7309778584cda4784af8d7a3"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-universal-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Bdash.app"

  zap trash: [
    "~/.bdash",
    "~/Library/Application Support/Bdash",
    "~/Library/Logs/Bdash",
    "~/Library/Preferences/io.bdash.plist",
    "~/Library/Saved Application State/io.bdash.savedState",
  ]
end
