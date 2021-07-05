cask "dynobase" do
  version "1.4.4"

  if Hardware::CPU.intel?
    sha256 "2bf0bfa85711933945c2b9f892bc894fdfd8fff158f578e43eb4c8edb13ad846"

    url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}.dmg",
        verified: "github.com/Dynobase/dynobase/"
  else
    sha256 "8660ed5f6160ccd01be08ce23b639acb296c6c5cf9e8529160be7dd485e7ddd3"

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
