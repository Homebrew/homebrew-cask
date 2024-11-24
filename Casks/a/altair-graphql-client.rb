cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.0.4"
  sha256 arm:   "525f5b4d5058dd06c77f9d530f97d72e4b67d5061e904556bf54bf59c29b2bac",
         intel: "0f743febfc96fb68da5f15c0c5c98c37d612f4ec95cf85be04f74532e90c4228"

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
