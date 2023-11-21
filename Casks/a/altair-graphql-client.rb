cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.11"
  sha256 arm:   "b486055c211b66fa29b28ca5dd81b8ec1393e7eafaf828a4b8c0c416cdf13256",
         intel: "5daafc4a15776319ff6bfe46a30c7db1be6d377e8c87f516e9a942867208f2c8"

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
