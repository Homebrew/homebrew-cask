cask "dynobase" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.10.5"

  if Hardware::CPU.intel?
    sha256 "f26ddc74b77cc58e143626aa58efedbff2310241ea9bd3a4037d0036a286c88d"
  else
    sha256 "28549aaa085e78bd501929bfe922d6e01e143b458444f82f0ef25ec732982cd0"
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
