cask "dynobase" do
  arch arm: "-arm64"

  version "1.10.8"
  sha256 arm:   "4b00de2f8bb92f0a607cf80750a6b965d63038c2bdb86b6766bdd423142b7523",
         intel: "5233d55f06a62de362c39451ca4bebbd8eeb6d31effd664aa6253b41772345bf"

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
