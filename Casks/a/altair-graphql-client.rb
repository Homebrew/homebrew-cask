cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.4"
  sha256 arm:   "1cd7f17a81e49719a8944732594747f0cf961fd1baa801f7da356fd5eba7301b",
         intel: "18bbd216ff0a6103bef8cb8c11fd8e34ae8f78af75635e19c8e14ba70e2d6a63"

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
