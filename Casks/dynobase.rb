cask "dynobase" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.8.2"

  if Hardware::CPU.intel?
    sha256 "b7f8c0b618d41721f67e16c490ad9a28887d6e75e91a78ba5bae7e92b8567a07"
  else
    sha256 "ef0eadccfc377f4cd2edba2b5edf155ab0cd38ab3bdb2a737e522f4300d2ef3e"
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
