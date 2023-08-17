cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.1"
  sha256 arm:   "50add425377f35d5497e84629c20eef41aba708a49150b7358d0304a3b38ca04",
         intel: "9819b54a33ecbe360324af88c67dba5a5d89bafe1ab3183b1e9f508500e58724"

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
