cask "dynobase" do
  version "1.6.0"

  if Hardware::CPU.intel?
    sha256 "9274091011226abc1b2e6c210350cd701f3d7308efdc34ca0c045fc68162971a"

    url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}.dmg",
        verified: "github.com/Dynobase/dynobase/"
  else
    sha256 "39181015a6540a1c6c2f1b457c213029f0fe8051aa633064b5283c0b2a81713b"

    url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}-arm64.dmg",
        verified: "github.com/Dynobase/dynobase/"
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
