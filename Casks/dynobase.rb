cask "dynobase" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.8.1"

  if Hardware::CPU.intel?
    sha256 "6140f786e798668d7f63c12db5bafbad47d1be18d76b64a01ae0c857db3459b6"
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
