cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.16"
  sha256 arm:   "dda1d487cb7980fed1555e9e852d1c69465b6fee30c0878975308c1deae126dc",
         intel: "20863c472b87cb48731e1dd03276681498d5c97a0f0e064616d727d8bbc7c0f3"

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
