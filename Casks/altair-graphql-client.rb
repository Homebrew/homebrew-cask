cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.0"
  sha256 arm:   "50b1e423748a05a9cefd1f8bac9c527f2913adf11a35943f87e3892cca0d4933",
         intel: "8eaab4b244f1cfa3fbbb346a659bd20c58450c065d18f2cf14655a41da33c4e5"

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
