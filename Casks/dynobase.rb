cask "dynobase" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.7.3"

  url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}#{arch}.dmg",
      verified: "github.com/Dynobase/dynobase/"
  if Hardware::CPU.intel?
    sha256 "11575efac58861f851260c87f46f298992725794b7ee25a6dcde4304e5a7687d"
  else
    sha256 "33d15bf8242ef348c649f4de2de04fd70c1e0accf926df8b34121eb66f1812fd"
  end

  name "Dynobase"
  desc "GUI Client for DynamoDB"
  homepage "https://dynobase.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dynobase.app"

  zap trash: [
    "~/Library/Application Support/dynobase",
    "~/Library/Saved Application State/com.rwilinski.dynobase.savedState",
  ]
end
