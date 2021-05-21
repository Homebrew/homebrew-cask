cask "altair-graphql-client" do
  version "4.0.3"

  if Hardware::CPU.intel?
    sha256 "0b88c937bb9c8f761ee0b6a48025a52b2871a34857c62bbbc6996ea4c6c4e841"

    url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_mac.zip",
        verified: "github.com/imolorhe/altair/"
  else
    sha256 "86e4a626f4f9eb93d6a02da654d30d8cb6fd0aa983468aeeb6fbb9a1e4fdb456"

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
