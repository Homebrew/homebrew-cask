cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "7.1.0"
  sha256 arm:   "2674d8ce5b1514da12838498c545c13b3a343ed7b12dc7b426ea4b757b521778",
         intel: "33715492d7bb3706ea0b04920d525d63be92237bceaecba084ce2a632f507117"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altair.sirmuel.design/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
