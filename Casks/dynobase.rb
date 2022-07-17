cask "dynobase" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.10.4"

  if Hardware::CPU.intel?
    sha256 "3b59c9dfc4b3e8d7be00fdb927a354e319f0d9efc379fc90bfceea406a28583a"
  else
    sha256 "909690285210c3be0c487df975547aae974f7a8b755cc60fba1581103d5ebe02"
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
