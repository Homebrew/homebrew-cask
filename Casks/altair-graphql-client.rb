cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.4"
  sha256 arm:   "81e6a2eb92f1cb5aa241e49559dbad860ddde935e481b7bd2a893105c07bbe9a",
         intel: "cf13cc9c063aaae6eb0e131fd051cea31ee1e79c086e06371527eb60a883ddda"

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
