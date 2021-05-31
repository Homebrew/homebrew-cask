cask "altair-graphql-client" do
  version "4.0.4"

  if Hardware::CPU.intel?
    sha256 "119e1618c8ed5bb673234503471308c7540df6f76036064e33141dbc2917eb7e"

    url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_mac.zip",
        verified: "github.com/imolorhe/altair/"
  else
    sha256 "bce7035af3e2b6b71b760d20f51be8a0ad3c568f89e92da7e6d41f41a5b6889a"

    url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_arm64_mac.zip",
        verified: "github.com/imolorhe/altair/"
  end

  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altair.sirmuel.design/"

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
