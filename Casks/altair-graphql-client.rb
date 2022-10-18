cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.3"
  sha256 arm:   "250ed73fd694ecab4638071cb9961baea8fb18d535db5b9c8fbc03fe414908e2",
         intel: "c3df653f9ce9e03df5ad0fcb576f06656d790e88e0459fa0fafca2839956f17c"

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
