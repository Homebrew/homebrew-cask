cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.23"
  sha256 arm:   "a52c834d5d79fa329a752aed455d3c70dba509ff7121bb5c79ee208f02a2a3ee",
         intel: "6294177bbc7ef73aabddae20ee5329fdf623b3d37d39326fc9792f179dd45d2c"

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
