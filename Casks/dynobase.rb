cask "dynobase" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.10.2"

  if Hardware::CPU.intel?
    sha256 "985e1730d2479025aeacd619ba4d2df205ed276169e56bd42c9658c1da7335b2"
  else
    sha256 "5d439a82f12fb27cb3cd930b714667c63eff9233668133b1fc8a99dde35d838c"
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
