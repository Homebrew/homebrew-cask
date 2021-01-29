cask "dynobase" do
  version "1.3.1"
  sha256 "9f5b4c3ce7814e46190e87e7800e7f6e2db8601c83f29dc937778bbfe1606ba4"

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
