cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.5.3"
  sha256 arm:   "4aad94956f6482c92ae7567b4acfaac30f95b291c67b4629a24f840780a7270c",
         intel: "46d8c13a819aea344d76041c42ffc8ea54c38367cb50ce9f6d551143e4db5b3e"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altairgraphql.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
