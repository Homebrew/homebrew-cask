cask "dynobase" do
  arch arm: "-arm64"

  version "1.10.7"

  if Hardware::CPU.intel?
    sha256 "bc18e8fef6a821c7194f5e22c02c4bb06e733aad35f774e6eac8293910348818"
  else
    sha256 "6503bc8a919c7b49d71902be9f252d5a4121a55898d3958e57c19271782ac0b9"
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
