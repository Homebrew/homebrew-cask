cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.13"
  sha256 arm:   "1953d95eee4ddd6b71d7a309fac3004bd5efa92cce47d4b210adf0e1b73e06e4",
         intel: "691e4cab45671cf82588757b9999394c91be2ead5f1f8140f5a2d01b9bb5c230"

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
