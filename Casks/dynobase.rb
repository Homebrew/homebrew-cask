cask "dynobase" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.9.1"

  if Hardware::CPU.intel?
    sha256 "69f7cee32cbc2c1bab7d6bf74b447cbcd5d1773a5b93c9a3aa41b4c9109b3046"
  else
    sha256 "84b54af88257207dacda050bf84c9c8b1560debcb55592928ac662ee83eb1cf6"
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
