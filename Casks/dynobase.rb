cask "dynobase" do
  version "1.7.1"

  if Hardware::CPU.intel?
    sha256 "b8f2f1a65e4e5e8a6290f0b4ede3f9ccda3d198ed2142c5b059825cdb3699419"

    url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}.dmg",
        verified: "github.com/Dynobase/dynobase/"
  else
    sha256 "261d7e395aaa94ec8cb8fde540c8093ca2b2d35a8f3f77b10b286be9572a5ac3"

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
