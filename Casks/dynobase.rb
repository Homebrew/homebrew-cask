cask "dynobase" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.7.4"

  url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}#{arch}.dmg",
      verified: "github.com/Dynobase/dynobase/"
  if Hardware::CPU.intel?
    sha256 "f559304065faf9cf203797093fc24bd7edca948e226249a0b92dde037bddf568"
  else
    sha256 "091a711bbfbbe3b8537e9406ccaa1ca8895222d9ca86bb87aac1e2302c5f63d9"
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
