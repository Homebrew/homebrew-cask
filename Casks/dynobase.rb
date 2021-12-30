cask "dynobase" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.7.7"

  if Hardware::CPU.intel?
    sha256 "9cc0c090d6813d7c5474bd8c8115769183e74858840ea944b3fe7c22f3bfa57f"
  else
    sha256 "78c62b7eac57282d4afc2e7afe6a28213595a6dcb542b96d0f393a4d2a2c60eb"
  end

  url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}#{arch}.dmg",
      verified: "github.com/Dynobase/dynobase/"
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
