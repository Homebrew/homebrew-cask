cask "dynobase" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.10.0"

  if Hardware::CPU.intel?
    sha256 "a30a7c51e65c40b579dd15dca1e3dfe09a42aa49197f5133ef7fc0556917ca8f"
  else
    sha256 "4fead01c0652554cfacb5ae5aed33f1afbab676712809e318811cbe70661c599"
  end

  url "https://github.com/Dynobase/dynobase/releases/download/v#{version}/Dynobase-#{version}#{arch}.dmg",
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
