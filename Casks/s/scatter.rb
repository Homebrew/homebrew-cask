cask "scatter" do
  version "12.1.1"
  sha256 "b7db4b8bb63547e4313520fa906e149646ee4f7344d916921af5c57dc885ebc2"

  url "https://github.com/GetScatter/ScatterDesktop/releases/download/#{version}/mac-scatter-#{version}.dmg",
      verified: "github.com/GetScatter/ScatterDesktop/"
  name "Scatter"
  desc "Desktop wallet for EOS"
  homepage "https://get-scatter.com/"

  app "Scatter.app"

  zap trash: [
    "~/Library/Application Support/scatter",
    "~/Library/Logs/scatter",
    "~/Library/Preferences/com.get-scatter.server.plist",
    "~/Library/Saved Application State/com.get-scatter.server.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
