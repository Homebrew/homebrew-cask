cask "altair-graphql-client" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.1.0"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  if Hardware::CPU.intel?
    sha256 "92d71fbb5b8478f6a32fc4667dadb5169911d8ec17e25411a9a8ff3beac58af8"
  else
    sha256 "03b36976678ab1054434abfbf5064c481cb5c59f3b89b88d7269202674f947f4"
  end

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
