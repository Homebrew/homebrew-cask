cask "bdash" do
  version "1.19.2"
  sha256 "967d4e4104a702788d3c8797347cbcb6aa7cf84297c8db2cab457efb485a712b"

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
