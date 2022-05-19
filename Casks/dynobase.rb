cask "dynobase" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.9.3"

  if Hardware::CPU.intel?
    sha256 "2b3f8b01c6c1a4f84dd1566181910c20156484fa6a593f16e87f7f5d0dc52d79"
  else
    sha256 "899ae8cc8076c70f15bed821693813b9679880669e9b5d55df58527dd8926f7e"
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
