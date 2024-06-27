cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "7.2.1"
  sha256 arm:   "d87d73bcfa5fc3f841d5ec763cd0337a0f3dce3789cfa71f3083f1197c140b52",
         intel: "d952798b8f87d72a92af92d31745459c6801feb3da5edff127585076786c122d"

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
