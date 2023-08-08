cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.1.0"
  sha256 arm:   "eeeb1f2de4dc69de517359e4e8e0407d9c6f82fae347e1cd428f4e7c8c5c5fb6",
         intel: "9550dc64915c8205cc325a07e27fcf0da84cbebad0fd4675589c98ee5079b1b6"

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
