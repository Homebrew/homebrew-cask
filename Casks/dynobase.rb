cask "dynobase" do
  version "1.3.2"
  sha256 "c07a5412b40a54c3f86bc3577f17ec25a095b4dc2a251bf036ad28545f5a8817"

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
