cask "altair-graphql-client" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.5.0"

  if Hardware::CPU.intel?
    sha256 "409b40a2c1771d30867030bad6eb7182f519406113828439297006c3d5125bac"
  else
    sha256 "68486db2cc40d372cda162ad0d1f4d53b1fd95625a399c00fcb1247baf5fbb05"
  end

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
