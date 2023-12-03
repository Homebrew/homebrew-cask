cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.12"
  sha256 arm:   "92eaf3c0aa87c59cd69bb57f5f6918d43c902b368037f90f677fc0ff6d61c112",
         intel: "ff7cdd32054399b4b13f65f5f824665c96d4f07de7fca141cedcf152b187e117"

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
