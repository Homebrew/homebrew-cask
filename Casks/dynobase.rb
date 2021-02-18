cask "dynobase" do
  version "1.3.3"
  sha256 "4d7bac9ca46c778763c1e1099ac79c661e5080640da799b449c2d9f785b2ab26"

  url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}.dmg",
      verified: "github.com/Dynobase/dynobase/"
  appcast "https://github.com/Dynobase/dynobase/releases.atom"
  name "Dynobase"
  desc "GUI Client for DynamoDB"
  homepage "https://dynobase.dev/"

  app "Dynobase.app"

  zap trash: [
    "~/Library/Application Support/dynobase",
    "~/Library/Saved Application State/com.rwilinski.dynobase.savedState",
  ]
end
