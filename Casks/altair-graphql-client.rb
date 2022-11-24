cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.5"
  sha256 arm:   "1b9eb653c837a0f0aa60b1953d22734c38d4906bbcd5b8db3138d9d356452984",
         intel: "8e64831f43fd02acfe746a2a20abf77a5b80c7be837a2ce2a4f35f0669e536e0"

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
