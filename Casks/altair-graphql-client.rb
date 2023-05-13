cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.24"
  sha256 arm:   "5add61f302962f1cb0db96217bbc8c8c6d9127ea589fc3cbd3de69e8fee27e62",
         intel: "43df866212c4a5e1f92030f545b2cc5d1c37093e0ed24843312bbbc0ca63cb36"

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
